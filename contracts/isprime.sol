// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract isPrime {
    function checkPrime(uint256 n) public pure returns (uint256) {
        if (n <= 1) {
            return 0;
        }

        for (uint256 i = 2; i * i <= n; i++) {
            if (n % i == 0) {
                return 0;
            }
        }

        return 1;
    }
}
