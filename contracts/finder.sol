// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract GreatestFinder {
    // Function to find the greatest among three integers
    function findGreatest(int a, int b, int c) public pure returns (int) {
        if (a >= b && a >= c) {
            return a;
        } else if (b >= a && b >= c) {
            return b;
        } else {
            return c;
        }
    }
}
