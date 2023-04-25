// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract answer14 {
    
    // TODO: Please declare the Calling event by filling the arguments.
    event Calling(
        address account, 
        uint256 number, 
        bool flag, 
        string message, 
        string txt);

    function emitCalling(address account, uint256 number, bool flag, string memory message) public {
        emit Calling(account, number, flag, message, "Meow");
    }
}