// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.17;

import "./IConfirmedMerkleTree.sol";
import "./CMTUtils.sol";

/**
 * @title Confirmed Merkle Tree with O(1) append.
 * @author Allen Kang
 * @notice This merkle tree saves only confirmed node, which has left and
 * right child, and it inserts only maximum two nodes per an append, so it
 * has O(1) write performance. Instead of efficient append, it has a little
 * inefficient for querying merkle tree. (O(log n)) However, in many cases,
 * it would be more efficient.
 */
contract ConfirmedMerkleTree is IConfirmedMerkleTree {
    uint16 constant NOT_CONFIRMABLE = 0xFFFF;

    /**
     * The number of leaf nodes.
     * (It means the number of data in merkle tree)
     */
    uint256 public leafSize;

    /**
     * Merkle tree nodes.
     *
     * First element represents level, which is the reversed depth of tree.
     * The leaf nodes have depth 0 and the level of parent node in depth `N`
     * is `N + 1`.
     *
     * Second element represents indices of node in depth N. The size of
     * leaf nodes (level 0) is the number of data. The size of parent nodes
     * of level N is `ROUNDUP(N / 2)`.
     */
    mapping(uint16 => mapping(uint256 => bytes32)) public tree;

    /**
     * Appends new data to merkle tree.
     *
     * @param data 32 bytes data (such as hash for something) to add.
     */
    function append(bytes32 data) public virtual {
        uint256 index = leafSize++;

        // inserts leaf node into merkle tree.
        _confirmNode(0, index, data);

        // contributes one node in merkle tree if the node that is empty but
        // confirmed (it means the hash value in node never changed anymore) exists.
        if (index % 2 == 1) {
            _confirmNode(
                1,
                index / 2,
                CMTUtils.hash(tree[0][index - 1], data)
            );
        } else {
            // search confirmable node and contributes it.
            (uint16 level_, uint256 levelIndex) = _getConfirmableNodeFromLeafNode(index);

            if (level_ != NOT_CONFIRMABLE) {
                // inserts other node only if confirmable node found.
                _confirmNode(
                    level_,
                    levelIndex,
                    CMTUtils.hash(
                        tree[level_ - 1][levelIndex * 2],
                        tree[level_ - 1][levelIndex * 2 + 1]
                    )
                );
            }
        }

        emit Insert(index, data);
    }

    /**
     * Gets current merkle root.
     */
    function merkleRoot() public view returns (bytes32) {
        // get merkle root history for current size.
        return merkleRootHistory(leafSize);
    }

    /**
     * Gets merkle root when its size was `n`.
     * 
     * @param n merkle root size.
     */
    function merkleRootHistory(uint256 n) public view returns (bytes32) {
        // cannot get merkle root history in this case.
        require(n <= leafSize, "n is greater than leaf size");
        // traverse tree and calculate root value.
        return _nodeValue(_level(n), 0, n);
    }

    /**
     * Gets the current merkle tree depth.
     */
    function level() public view returns (uint16) {
        return _level(leafSize);
    }

    /**
     * Calculates node value with minimum read operations.
     * 
     * @param level_ node level.
     * @param index_ node index.
     * @param leafSize_ the number of data in merkle tree.
     */
    function _nodeValue(
        uint16 level_,
        uint256 index_,
        uint256 leafSize_
    ) internal view returns (bytes32) {
        if (_isConfirmed(level_, index_, leafSize_)) {
            // if it's confirmed node, read from storage.
            return tree[level_][index_];
        } else {
            // if it's unconfirmed node, we should calculate node value from child nodes.

            if (index_ * (1 << level_) >= leafSize_) {
                // This means all leaf nodes from this node are all zero values.
                // In this case, we can use pre-calculated hash value.
                return CMTUtils.zero(level_);
            } else {
                // get left node value.
                bytes32 left = _nodeValue(level_ - 1, index_ << 1, leafSize_);

                // get right node value.
                bytes32 right = _nodeValue(
                    level_ - 1,
                    (index_ << 1) + 1,
                    leafSize_
                );

                // gets Hash(Left, Right)
                return CMTUtils.hash(left, right);
            }
        }
    }

    /**
     * Gets the merkle tree depth when leaf size is n.
     */
    function _level(uint256 n) internal pure returns (uint16) {
        return CMTUtils.level(n);
    }

    /**
     * Checks that node in merkle tree is confirmed.
     *
     * @param level_ level of node.
     * @param index_ index of node in the level.
     * @param _leafSize the total number of leaf nodes.
     */
    function _isConfirmed(
        uint16 level_,
        uint256 index_,
        uint256 _leafSize
    ) internal pure returns (bool) {
        if (level_ == 0) {
            // every leaf nodes which indices less than 
            // leaf size are confirmed.
            return index_ < _leafSize;
        }

        return (1 << (level_ - 1)) * (2 * index_ + 3) - 2 < _leafSize;
    }

    /**
     * Gets confirmable node from leaf node. 
     * return `NOT_CONFIRMABLE` level if no confirmable node.
     * 
     * @param index leaf node index.
     */
    function _getConfirmableNodeFromLeafNode(
        uint256 index
    ) internal pure returns (uint16, uint256) {
        uint16 level_;
        index++;

        while (index > 0) {
            // if current node is right node, return parent node.
            if (index & 0x01 == 0) {
                return (level_ + 1, (index >> 1) - 1);
            }

            // if current node is left node,
            level_++;
            index >>= 1;
        }

        // when leaf node index is 2^n - 2, this whould be returned.
        // In this case, we don't confirm nodes excluding leaf node.
        return (NOT_CONFIRMABLE, 0);
    }

    /**
     * Confirm nodes.
     * 
     * @param level_ node level
     * @param index_ node index
     * @param _data node value
     */
    function _confirmNode(uint16 level_, uint256 index_, bytes32 _data) internal {
        tree[level_][index_] = _data;
    }
}
