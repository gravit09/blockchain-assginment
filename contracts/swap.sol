// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract swap{
    function swapfunc(uint256 a,uint256 b) public pure returns(uint256,uint256){
        uint256 temp;
        temp = a;
        a=b;
        b=temp;

        return (a,b);
    }
}