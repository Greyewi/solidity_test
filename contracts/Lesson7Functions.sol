// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Function7Lesson {

    address owner;

    constructor(){
        owner = msg.sender;
    }
    
    event Paid(address _from, uint _amount, uint _timestamp);

    function pay() external payable {
       emit Paid(msg.sender, msg.value, block.timestamp);
    }

    function withdraw(address payable to) external { // может вызвать любой пользователь в сети 
        to.transfer(address(this).balance);
    }

    function protectedWithdraw(address payable to) external { // может вызвать только владелец контракта
        require(msg.sender == owner, 'you aren`t an owner');
        to.transfer(address(this).balance);
    }

    function protectedRevertWithdraw(address payable to) external { // может вызвать только владелец контракта
        if(msg.sender != owner){
            revert('you aren`t an owner');
        } else {
            to.transfer(address(this).balance);
        }
    }
    
}