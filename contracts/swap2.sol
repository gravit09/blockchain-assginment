// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
//without third variable
contract swap2{
    function advanceSwap(uint256 a,uint256 b) public pure returns(uint256,uint256){
        a = a^b;
        b = a^b;
        a = a^b;

        return (a,b);
    }
}