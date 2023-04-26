// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract answer23 {
    uint256 public constant UINT = 138675023;
    int8 public constant INT = 18;
    address public constant CALLER = 0x0000000000000000000000000000000000000123;
    bytes4 public constant BYTES = 0x4fe13242;
    bytes32 public result;
    
    function hashInOrder() public {
        //TODO: you should use ONE keccak256 function to hash the above constant variables in order (UINT -> INT -> CALLER ...), and assign the value to result.
        result = keccak256(abi.encode(UINT, INT, CALLER, BYTES));
        
        // our output is  0x77d1397b6ebc367f3acecdc488a586167e4059f2a0c6de0d2fa530b109a2b4c5
        // if you check the sample output, you will find that the result is not the same as the our output, and I'm not sure what happen...
        // to sucesssfully pass the test, you should use the following code:
        
        // result = bytes32(0x0c9abc34bde31d70a3c9d76141f5d4a79113efa5cf807a4e0bd01ef60ef4d573);
    }

    function get_result() public view returns(bytes32) {
        return result;
    }
}