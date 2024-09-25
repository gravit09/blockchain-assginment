// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract reverseInt{
    function reverseFunc(uint num) public pure returns(uint){
        require(num >= 10 ,"not valid number");
        uint temp = 0;
        while(num>0){
            uint last = num%10;
            temp = temp * 10 + last;
            num = num/10;
        }
        return temp;
    }
}