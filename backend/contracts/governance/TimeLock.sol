// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/governance/TimelockController.sol";

contract TimeLock is TimelockController {
    constructor(
        /// minDelay: is how long you have to wait before you can execute a proposal
        /// proposers: is the list of addresses that can create proposals
        /// executors: is the list of addresses that can execute proposals
        /// admin: is the address that can change the proposers, executors, and minDelay
        uint256 _minDelay,
        address[] memory _proposers,
        address[] memory _executors,
        address _admin
    ) TimelockController(_minDelay, _proposers, _executors, msg.sender) {}
}