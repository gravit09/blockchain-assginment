// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleArmstrongChecker {
    
    // Function to check if a number is an Armstrong number
    function isArmstrong(uint256 num) public pure returns (bool) {
        uint256 originalNum = num;
        uint256 sum = 0;
        uint256 digits = 0;

        // Count digits and calculate the sum of powered digits
        while (num > 0) {
            digits++;
            uint256 digit = num % 10;
            sum += digit ** digits; // Using ** for exponentiation in Solidity
            num /= 10;
        }
        
        return sum == originalNum;
    }
}
