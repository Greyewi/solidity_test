// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Struct5Lesson {

    struct Product {
        string name;
        uint price;
    }

    struct Payment {
        Product product;
        uint amount;
        uint timestamp;
        address from;
        string message;
    }

    struct Balance {
        uint totalPayments;
        mapping(uint => Payment) payments;
    }

    mapping(address => Balance) public balances;

    function payForDool(string memory message) public payable {
        balances[msg.sender].totalPayments++;
        uint price = 2000000000000000000;

        Product memory doolProduct = Product(
            "Barby",
            price
        );

        Payment memory newPayment = Payment(
            doolProduct,
            msg.value,
            block.timestamp,
            msg.sender,
            message
        );

        if(msg.value >= price){
            balances[msg.sender].payments[balances[msg.sender].totalPayments] = newPayment;
        }
    }

    function payForBread(string memory message) public payable {
        balances[msg.sender].totalPayments++;
        uint price = 1000000000000000000;

        Product memory doolProduct = Product(
            "White",
            price
        );

        Payment memory newPayment = Payment(
            doolProduct,
            msg.value,
            block.timestamp,
            msg.sender,
            message
        );

        if(msg.value >= price){
            balances[msg.sender].payments[balances[msg.sender].totalPayments] = newPayment;
        }
    }

    function getPayment(address _addr, uint _index) public view returns(Payment memory) {
        return balances[_addr].payments[_index];
    }
}