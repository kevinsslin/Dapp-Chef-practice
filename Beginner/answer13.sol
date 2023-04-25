// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract answer13 {
  // TODO: Define a struct named `Food`, 
  // The first variable is a string named `name`, and the second is a uint256 named `price`.
    struct Food {
        string name;
        uint256 price;
    }
  // TODO: Declare a Food array named `foods`
    Food[] foods;
  // TODO: Declare a function named `createFood()`, it should let user createNewFood. 
  function createFood(string memory name, uint256 price) external {
      Food memory newFood;
      newFood.name = name;
      newFood.price = price;
      foods.push(newFood);
  }
  // That is, it should take a string and a uint256 as param, create a `Food`, and push it into the array `foods`.


  function checkAns() external view returns (string memory, uint256) {
    return (foods[0].name, foods[0].price);
  }
}