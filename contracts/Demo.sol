// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyShop {
    address public owner; //  0x5B38Da6a701c568545dCfcB03FcB875f56beddC4

    mapping (address => uint) public payments; // uint - тип данных типа integer, но не отрицательные 

    constructor() { // при вызове контракта
        owner = msg.sender; // данные в блокчейне хранятся
    }

    function payForItem() public payable { // функция к которой мы имеем доступ из вне и она может принимать деньги (payable)
        // зачисление денег происходит автоматически 
        payments[msg.sender] = msg.value; // под ключ нужно положить некую сумму 
    }

    function withdrawAll() public {
        address payable _to = payable(owner); // local
        address _thisContract = address(this); //  указываем ссылку на контракт
        _to.transfer(_thisContract.balance); // переводим все средства с _thisContract на _to
    }
}