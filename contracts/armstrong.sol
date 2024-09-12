// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ArmstrongChecker {

    function isArmstrong(uint256 num) public pure returns (bool) {
        uint256 originalNum = num;
        uint256 sum = 0;
        uint256 digitsCount = countDigits(num);

        while (num != 0) {
            uint256 digit = num % 10;
            sum += power(digit, digitsCount);
            num /= 10;
        }

        return sum == originalNum;
    }

    function countDigits(uint256 num) internal pure returns (uint256) {
        uint256 digits = 0;
        while (num != 0) {
            digits++;
            num /= 10;
        }
        return digits;
    }

    function power(uint256 base, uint256 exp) internal pure returns (uint256) {
        uint256 result = 1;
        for (uint256 i = 0; i < exp; i++) {
            result *= base;
        }
        return result;
    }
}
