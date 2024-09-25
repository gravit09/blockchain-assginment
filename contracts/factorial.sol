// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract Factorial {
    uint public number;
    uint public ans;

    function factCalc(uint _number) public returns (uint) {
        require(_number >= 0, "Number must be non-negative"); 
        ans = 1; 
        for (uint i = 1; i <= _number; i++) {
            ans *= i; 
        }
        return ans; 
    }
}
