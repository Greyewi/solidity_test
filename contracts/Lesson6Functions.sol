// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Function6Lesson {
    // public
    // external
    // internal
    // private

    uint public balance;


    // CALLABLE
    function getBalance() public view returns(uint _balance) {
        _balance = address(this).balance;
        //return _balance;
    }

		string message = "hello!"; // state
    function getMessage() external view returns(string memory) {
        return message;
    }

    function rate(uint amount) public pure returns(uint) {
        return amount * 3;
    }


    // PAYABLE
    // transaction
    function setMessage(string memory newMessage) external returns(string memory) {
        message = newMessage;
        return message;
    }

    function pay() external payable {
        balance += msg.value;
    }

    fallback() external payable { // вызовется если при отпраке денег в контракт будетуказана несуществующая функция

    }

    receive() external payable { // receive -> готовая функция которая принмает денежные средства на контракт (в remix мы с ней работать не можем)
        //balance += msg.value;
    }

    
}