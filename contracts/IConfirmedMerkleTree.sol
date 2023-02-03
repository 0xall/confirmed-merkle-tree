// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.17;

interface IConfirmedMerkleTree {
    /**
     * This event is emiited when new data appended.
     * 
     * @param index data index.
     * @param data data value.
     */
    event Insert(uint256 index, bytes32 data);

    /**
     * Appends new data to merkle tree.
     *
     * @param data 32 bytes data (such as hash for something) to add.
     */
    function append(bytes32 data) external;

    /**
     * Gets current merkle root.
     */
    function merkleRoot() external view returns (bytes32);

    /**
     * Gets merkle root when its size was `n`.
     * 
     * @param n merkle root size.
     */
    function merkleRootHistory(uint256 n) external view returns (bytes32);

    /**
     * Gets the current merkle tree depth.
     */
    function level() external view returns (uint16);
}
