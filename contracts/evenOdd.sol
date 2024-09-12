// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract evenodd{
    function checkEven(uint256 a) public pure returns(uint256){
        if(a%2 == 0){
            return 1;
        } else {
            return 0;
        }
    }
}