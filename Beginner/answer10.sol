// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

// The system will deploy `Called` for you
contract Called {
  bool public called = false;

  function setCalled() external {
    called = true;
  }
  function getCalled() external view returns (bool) {
    return called;
  }
}

// TODO: write an interface named `ICalled`, implement the two functions in contract `Called`. 
interface ICalled {
    function setCalled() external;
    function getCalled() external view returns (bool);
}

contract answer10 {
  Called public calledContract;

  constructor() {
    calledContract = new Called();
  }

  function setCalled() external {
    // TODO: finish this function by using `ICalled` to call `setCalled()` in contract `Called`. 
    ICalled(address(calledContract)).setCalled();
  }

  function checkAns() external view returns (bool) {
    return ICalled(address(calledContract)).getCalled();
  }
}