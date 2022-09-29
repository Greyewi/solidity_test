// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

// contract DemoBool {
//     bool myBool; // Переменная хранится прямо в контракте, Это переменная состояния (state), хранится, пока блокчейн существует, и хранится в нём. По умолчанию false
//     bool public myPBool; // public можно считывать из контракта
//     bool myTBool = true;

//     function myFunc(bool _inputBool) public { // _inputBool - временная перемена, живет она ограничено во время выполнения функции.
//         bool localBool = false; // локальная переменна (local)
//         bool myVar = localBool && _inputBool; // and
//         localBool || _inputBool; // or
        
//         localBool == _inputBool; 
//         localBool != _inputBool; 
//         !localBool;

//         if(localBool == _inputBool) {
//             //
//         }

//     }

// }


contract DemoInt {
    uint public myUint = 10; // unsigned integer 10 
    // signed integer -10

    function myFunc(uint _tempUint) public {
        uint localUint = 42;
        uint256 newUint = 1234; // uint256 == uint == 2 ^ 256; max uint
        uint8 smallestUint = 255; // 2 ^ 8 == 256 (from 0 to 255)

        localUint + 1;
        localUint - 1;
        localUint * 5;
        localUint / 5;
        localUint ** 2; // возведение в степень
        localUint % 1; // остаток от деления
        //-localUint; // перевод знака с uint не работает
        localUint == smallestUint;
        localUint != smallestUint;
        localUint > smallestUint;
        localUint < smallestUint;
        localUint >= smallestUint;
        localUint <= smallestUint;
    }

    // sign int
    int public myInt = -22;
    int8 public mySmallestInt = -1; // 2 ^ 7 == 128 (from -128 to 127)

    uint public min;
    uint public max;

    function demo() public {
        min = type(uint8).min;
        max = type(uint8).max;
    }

    uint8 public tempVal = 254;
    function inc() public {
        //tempVal = tempVal + 1;
        //tempVal +=1;
        tempVal--;
    }

    uint8 public tempCVal = 254;
    function curryedInc() public {
        unchecked {
            tempCVal++;
        }
    }
}


