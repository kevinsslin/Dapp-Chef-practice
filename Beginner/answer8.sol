// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17; 
// 1. The system will call the three functions first and they should all revert.
// 2. then the system call `addNumByOne` 
// 3. After that the system will call the three functions and they should all pass without any error message
// 4. DO NOTHNG after the requirements.

contract answer8 {
  uint256 public balance = 0;

  // TODO: Write a function named `testAssert` using `assert`
    function testAssert() external {
        if (balance != 1) {
            assert(balance == 1);
        }
        else {
            assert(balance != 1);
        }
    }

  // TODO: Write a function named `testRequire` using `require`, the error message should be "Required" if reverted.
    function testRequire() external {
        if (balance != 1) {
            require(balance == 1, "Required");
        }
        else {
            require(balance != 1);
        }
    }

  // TODO: Write a function named `testRevert` using `revert`, the error message should be "Reverted" if reverted.
    function testRevert() external {
        if (balance != 1) {
            revert("Reverted");
        }
        else {
            revert();
        }
    }

  function addNumByOne() external {
    balance++;
  }
}