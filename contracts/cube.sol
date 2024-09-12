// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;
contract cube{
    function checkCube(uint256 a) public pure returns(uint256){
        return a*a*a;
    }
}