// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Greeting {
    string constant private GREETING = "Hello, My Name is Coco";  
    function returnGreeting() internal pure returns(string memory) {
        return GREETING;
    }
}

// TODO: you should inherit Greeting and complete greeting() in answer24
contract answer24 is Greeting{
    function greeting() public pure returns(string memory) {
        // TODO: you should return GREETING in this function.
        return returnGreeting();
    } 
}