pragma solidity ^0.8.0;


// File contracts/interfaces/IAggregationExecutor.sol



/// @title Interface for making arbitrary calls during swap
interface IAggregationExecutor {
    /// @notice propagates information about original msg.sender and executes arbitrary data
    function execute(address msgSender) external payable;  // 0x4b64e492
}

