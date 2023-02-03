// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.17;

import "./ConfirmedMerkleTree.sol";

/**
 * @title Contract for testing CMT with very large amount of data.
 * @author Allen Kang
 * @notice This will return wrong merkle root since confirmed nodes
 * are not initialized, so they are zeros. This contract is just for
 * testing append and querying merkle root when tree is very big.
 */
contract ConfirmedMerkleTreeWithDummy is ConfirmedMerkleTree {
    constructor(uint256 dummySize) {
        leafSize = dummySize;
    }

    function readTest() external {
        merkleRoot();
    }
}
