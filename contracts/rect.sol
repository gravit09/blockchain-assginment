// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Rect{
    uint length;
    uint breadth;
    uint height;

    function setVal(uint _length,uint _breadth,uint _height) public {
        length = _length;
        breadth = _breadth;
        height = _height;
    }

    function getVal() public view returns(uint ,uint ,uint ){
         return (length,breadth,height);
    }
}

contract objContract{
   Rect obj = new Rect();

   function returnObject() public view returns (Rect){
         return obj;
   }
}