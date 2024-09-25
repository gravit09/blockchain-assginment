// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract PrimeChecker {
    function isPrime(uint256 num) public pure returns (uint8) {
        if (num <= 1) return 0;
        if (num == 2 || num == 3) return 1;
        if (num % 2 == 0 || num % 3 == 0) return 0;
        for (uint256 i = 5; i * i <= num; i += 6) {
            if (num % i == 0 || num % (i + 2) == 0) return 0;
        }
        return 1;
    }
}
