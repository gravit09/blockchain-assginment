// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract BasicTokenContract {
    address private deployer;

    mapping(address => uint) public balances;

    event TokensMinted(address  owner, uint value);
    event Transfer(address from, address to, uint value);

    constructor() {
        deployer = msg.sender;
    }

    modifier isOwner() {
        require(msg.sender == deployer, "Not the contract owner");
        _;
    }

    modifier isEnoughBalance(uint value) {
        require(balances[msg.sender] >= value, "Insufficient balance");
        _;
    }

    function mintToken(uint value) public isOwner {
        balances[msg.sender] += value;
        emit TokensMinted(msg.sender, value);
    }

    function transfer(uint value, address receiver) public isEnoughBalance(value) {
        require(receiver != address(0), "Invalid receiver address");
        balances[receiver] += value;
        balances[msg.sender] -= value;
        emit Transfer(msg.sender, receiver, value);
    }
}
