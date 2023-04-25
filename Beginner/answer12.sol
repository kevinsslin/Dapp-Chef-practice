// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Called {
  string public greet;

  function setGreet(string memory _greet) external payable {
    greet = _greet;
  }
  
  function getGreet() external view returns (string memory) {
    return greet;
  } 
}

contract answer12 {
  Called public called;
  bool public success; 
  
  receive() external payable {}

  function deployContract() external {
    called = new Called();
  }
  
  // TODO: write a function named `callSetGreet()`, taking a string as a parameter.
  // This function should call function `setGreet()` in contract `called` and input the param string. 
  // You can, but not required, send some ETH with this call .
  function callSetGreet(string memory _txt) external payable{
    (success,) = address(called).call{value: 10000}(abi.encodeWithSignature("setGreet(string)", _txt));
  }

  function getGreet() external view returns (string memory) {
    return called.getGreet();
  }
}