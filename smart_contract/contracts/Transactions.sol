//SPDX-License-Identifier:MIT
pragma solidity ^0.8.24;

contract Transactions {

    uint256 transactionsCount;
    TransferStruct[] transactions;

    event Transfer(address from, address receiver, uint amount, string messsage, uint256 timestamp, string keyword);

    struct TransferStruct {
        address sender;
        address receiver;
        uint amount;
        string message;
        uint256 timestamp;
        string keyword;
    }

    function addToBlockchain(address payable receiver, uint amount, string memory message, string memory keyword) public {
        transactionsCount += 1;
        transactions.push(TransferStruct(msg.sender, receiver, amount, message, block.timestamp, keyword));

        emit Transfer(msg.sender, receiver, amount, message, block.timestamp, keyword);
    }

    function getAllTransactions() public view returns(TransferStruct[] memory) {
      return transactions;
    }

    function getTransactionCount() public view returns(uint256) {
      return transactionsCount;
    }
}