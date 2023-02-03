// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.17;

import "./ConfirmedMerkleTree.sol";

/**
 * @title CMT(Confirmed Merkle Tree) that cache merkle root for every append.
 * @author Allen Kang
 */
contract ConfirmedMerkleTreeWithHistory is ConfirmedMerkleTree {
    mapping(bytes32 => bool) merkleRootHistory_;

    function append(bytes32 data) public override {
        super.append(data);
        _commit();
    }

    function _commit() internal {
        merkleRootHistory_[merkleRoot()] = true;
    }
}
