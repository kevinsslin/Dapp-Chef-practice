// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Greeting {
    string constant private GREETING = "Hello, My Name is Coco";  
    function returnGreeting(string memory _input) public virtual pure returns(string memory) {
        return GREETING;
    }
}

// TODO: you should inherit Greeting and complete the following function.
contract answer25 is Greeting{
    // TODO: you should inherit and override returnGreeting from Greeting and convert the return value into the parameter: _input.
    function returnGreeting(string memory _input) override public pure returns(string memory) {
        // TODO: complete this function.
        return _input;
    }
}