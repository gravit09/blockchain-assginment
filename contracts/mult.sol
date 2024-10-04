// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Multiplier {
    function multiply(int256 a, int256 b) public pure returns (int256) {
        if (a == 0 || b == 0) {
            return 0;
        }

        bool negativeResult = (a < 0) != (b < 0); 

        uint256 absA = uint256(a < 0 ? -a : a);
        uint256 absB = uint256(b < 0 ? -b : b);
        
        uint256 result = 0;

        while (absB > 0) {
            if (absB & 1 == 1) {
                result += absA;
            }
            absB >>= 1;
            absA <<= 1;
        }

        return negativeResult ? -int256(result) : int256(result);
    }
}
