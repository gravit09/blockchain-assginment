// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Add {
    uint256 public first;
    uint256 public second;
    uint256 public total;

    function setFirst(uint256 x) public {
        first = x;
    }

    function setSecond(uint256 y) public {
        second = y;
    }

    function calculate() public returns(uint256) {
        total = first + second;
        return total;
    }
}