// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract answer21 {

    address public a;
    uint256 public b;
    uint128 public c;
    int32 public d;
    int8 public e;
    bool public f;
    bytes1 public g;

    // TODO: you should complete this function which changes the value of several global variables and return their values in order.
    function changeValue(
        //TODO: you should complete the parameter field with correct input types.
        address _a,
        uint256 _b,
        uint128 _c,
        int32 _d,
        int8 _e,
        bool _f,
        bytes1 _g
    ) public returns (
        address,
        uint256,
        uint128,
        int32,
        int8,                                   
        bool,
        bytes1
    ) 
    {  
        //TODO: you should write the statements to change the values of global variables declared in the contract.
        a = _a;
        b = _b;
        c = _c;
        d = _d;
        e = _e;
        f = _f;
        g = _g;
        return ( a, b, c, d, e, f, g);
    }

    function get_a() public view returns(address) {
        return a;
    }
    function get_b() public view returns(uint256) {
        return b;
    }
    function get_c() public view returns(uint128) {
        return c;
    }
    function get_d() public view returns(int32) {
        return d;
    }
    function get_e() public view returns(int8) {
        return e;
    }
    function get_f() public view returns(bool) {
        return f;
    }
    function get_g() public view returns(bytes1) {
        return g;
    }
}