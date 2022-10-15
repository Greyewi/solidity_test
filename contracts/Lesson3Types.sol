// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Map3Lesson {
    mapping (string => uint) public ages; // ключ => значение
    mapping (address => string) public accounts; // могут быть только определенного типа
    mapping (address => uint) public payments; // storage адреса и мапы могут хранится толкько в блокчейне

    function setAges(string memory name, uint age) public {
        ages[name] = age;
    }

    function setAccounts(address adr, string memory name) public {
        accounts[adr] = name;
    }

    function setPayments() public payable {
        payments[msg.sender] = payments[msg.sender] + msg.value;
    }

    enum Actions {Stand, Walk, Run}
    Actions public MyAction; 

    function setStand() public {
        MyAction = Actions.Stand;
    }

    function setWalk() public {
        MyAction = Actions.Walk;
    }

    function setRun() public {
        MyAction = Actions.Run;
    }
}