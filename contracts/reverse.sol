// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract PalindromeCheck {
    function isPalindrome(uint256 number) public pure returns (uint8) {
        uint256 original = number;
        uint256 reversed = 0;

        while (number > 0) {
            uint256 digit = number % 10; 
            reversed = reversed * 10 + digit; 
            number /= 10; 
        }

        if (original == reversed) {
            return 1; 
        } else {
            return 0; 
        }
    }
}
