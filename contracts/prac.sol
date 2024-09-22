// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

contract prac{
    uint public salary;
    string public name = "garvit";

   function setSalary() public {
     salary = 10000;
   }

   function nameFunc() public returns(string memory){
       string memory name2 = "garvit";
       return name2;
   }

}