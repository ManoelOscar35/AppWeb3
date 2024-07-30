//SPDX-License-Identifier:MIT
pragma solidity ^0.8.24;

contract Transactions {
    uint256 transactionsCount;

    event Transfer(address from, address receiver, uint amount, string messsage, uint256 timestamp, string keyword);

    struct TransferStruct {
        address sender;
        address receiver;
        uint amount;
        string message;
        uint256 timestamp;
        string keyword;
    }

    TransferStruct[] transactions;

    function addToBlockchain(address payable receiver, uint amount, string memory message, string memory keyword) public {
        
    }
}