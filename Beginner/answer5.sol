// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17; 
contract answer5 { 
    address public owner;

    constructor(address _owner) {
        owner = _owner;
    }

    // TODO: declare a function modifier named `onlyOwner` which restrict that only the owner can call the modified function. 
    modifier onlyOwner {
      require(msg.sender == owner, "not owner");
      _;
    }
    // TODO: declare a function named `changeOwner` which takes an address as an input, this function assigns the input address to `owner`. Don't forget to use the modifier `onlyOwner` to restrict the caller of this function.
    function changeOwner(address _address) external  onlyOwner {
      owner = _address;
    }

    function getowner() external view returns (address) {
        return owner;
    }
}