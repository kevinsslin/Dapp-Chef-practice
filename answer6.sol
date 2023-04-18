// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17; 
contract answer6 {
    // `method`: "fallback" for fallback function, and the value sent to this contract for `amount`
    event Log(string method, uint256 amount);
    
    // declare a fallback function which returns the calldata, and emit the event `Log`.
    fallback() external payable {
      emit Log('fallback', msg.value);
    }
    
    // declare a receive function which emit the event `Log`.
    receive() external payable {
      emit Log('receive', msg.value);
    }

}