// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Fibonacci {
    function fibonacci(uint256 n) public pure returns (uint256) {
        require(n > 0, "Input must be a positive integer");
        if (n == 1 || n == 2) {
            return 1;
        }
        uint256 a = 1;
        uint256 b = 1;
        uint256 c;
        for (uint256 i = 3; i <= n; i++) {
            c = a + b;
            a = b;
            b = c;
        }
        return b;
    }
}
