// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Str2Lesson {
    string public myStr = "Test string"; // строка, и чем она длиннее, тем дороже будет стоить деплой/транзакция контракта
    // строки не имеют длинны
    // в solidity нет операции конкатенации
    // троки нельзя сравнить
    // 'my str' == 'my str' - не работает
    // у строк нет индексов символов
    function temp(string memory outerStr ) public {
        string memory tempString = "temp something text"; // данная переменная с флагом memory будет существовать вне блокчейна, только в рамках функции
        myStr = outerStr;
    }

    address public myAddress = 0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2;

    function getBalance() public view returns(uint){  // view функции не вызывают транзации, в них нельзя отправить средства
        return myAddress.balance;
    }

    function transferTo(address payable targetAddr, uint amount) public { // payable флаг говорит нам о том, что данный адресс может переводить средства
        targetAddr.transfer(amount);
    }


    function receiveMoney() payable public {

    }
}