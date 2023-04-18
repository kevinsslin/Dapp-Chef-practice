// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17; 
contract answer7 {

    // TODO: Write functions named `add` to add two uint256 inputs or three uint256 inputs. 
    function add(uint256 _x, uint256 _y) pure  public returns (uint256) {
        return _x + _y;
    }
    function add(uint256 _x, uint256 _y, uint256 _z) pure public returns (uint256) {
        return _x + _y + _z;
    }

    // Users should be able to call `add(100,200)` and get 300, call `add(100, 200, 300)` to get 600.

}