// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Array4Lesson {
    
    uint[10] public items = [10, 20, 1];
    string[2] public list = ['str'];

    uint[2][5] public matrix; // [5] - outer [2] - inner

    uint[] public dynArr;
    uint public dynArrLength = 0;


    bytes32 public hobit = "Bilbo"; // от 1 до 32 байт (32 * 8 = 256)
    bytes public hobait = "Bilbo"; // В отличии от строк можно мерять длинну
    uint public hobLength = hobait.length;

    function modifyArray() public {
        items[0] = items[0] * 5;
        items[5] = items[0];

        matrix = [
            [1,2],
            [1,2],
            [1,2],
            [1,2],
            [1,2]
        ];
    }

    function sampleMemory() public view returns(uint[] memory){
        uint[] memory tempArr = new uint[](5);
        tempArr[4] = 0;
        return tempArr;
    }

    function modDynamicArr(uint num) public {
        dynArr.push(num); // Динамически меняет длину массива
        dynArrLength = dynArr.length;
    }
}