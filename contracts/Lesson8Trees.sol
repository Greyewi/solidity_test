// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Function8Trees {

    
    bytes32[] public hashes;
    string[4] transactions = [
        "Transaction1: 106021 > 255543",
        "Transaction2: 255543 > 122345",
        "Transaction3: 122345 > 564334",
        "Transaction4: 564334 > 106021"
    ];

    constructor(){
        for(uint i; i < transactions.length; i++){
            hashes.push(getHash(transactions[i]));
        }

        uint count = transactions.length;
        uint offset = 0;

        while(count >= 1) {
            for(uint i = 0; i < count - 1; i += 2){
                hashes.push(keccak256(
                    abi.encodePacked(
                        hashes[offset + i], hashes[offset + i + 1]
                    )
                ));
            }
            offset = offset + count;
            count = count / 2;
        }
    }

    function getHashPairs(string memory input1, string memory input2) public pure returns(bytes32){
        
    }

    function getHash(string memory input) public pure returns(bytes32){
        return keccak256(
            abi.encodePacked(input)
        );
    }
    
}