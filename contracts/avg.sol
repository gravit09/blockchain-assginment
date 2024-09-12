// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;
contract avg{
    function checkCube(uint256 a,uint256 b,uint256 c) public pure returns(uint256){
        return (a+b+c)/3;
    }
}