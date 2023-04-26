// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

// TODO: you should declare two global addresses, CALLER_1 and CALLER_2.
contract answer22 {
    
    address public immutable CALLER_1;

    //TODO: you should initialize this constant variable with zero address.
    address public constant CALLER_2 = address(0);

    constructor(address _caller) {
        //TODO: you should assign the input value to the immutable address in the constructor.   
        CALLER_1 = _caller;
    }

    function get_CALLER_1() public view returns (address) {
        return (CALLER_1);
    }

    function get_CALLER_2() public pure returns (address) {
        return (CALLER_2);
    }
}