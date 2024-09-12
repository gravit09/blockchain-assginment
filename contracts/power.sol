// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract power{
    function checkPower(uint256 x,uint256 y) public pure returns(uint256){
           return x**y;
    }
}