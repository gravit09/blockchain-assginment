// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract GreatestOfThree {
    function findGreatest(int256 num1, int256 num2, int256 num3) public pure returns (int256) {
        int256 greatestNum = num1;

        if (num2 > greatestNum) {
            greatestNum = num2;
        }
        if (num3 > greatestNum) {
            greatestNum = num3;
        }

        return greatestNum;
    }
}
