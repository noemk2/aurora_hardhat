// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract ramdom {

    // function random(uint number) public view returns(uint){
    //     return uint(keccak256(abi.encodePacked(block.timestamp,block.difficulty,
    //     msg.sender))) % number;
    // }
  event OwnerSet(
        address indexed oldOwner,
        address indexed newOwner
        );
// }

// block dificulti
// contract RandomNumbers{
//     function random(uint number) public view returns(uint){
//         return uint(keccak256(abi.encodePacked(block.timestamp,block.difficulty,
//         msg.sender))) % number;
//     }
// }

// increment number
// contract RandomNumbers{
//     uint initialNumber;
//     function createRandom(uint number) public returns(uint){
//         return uint(keccak256(abi.encodePacked(initialNumber++))) % number;
//     }
// }

// using blockhash
// contract RandomNumbers{
//     function createRandom(uint number) public view returns(uint){
//         return uint(blockhash(block.number-1)) % number;
//     }
// }

// array whit ramdom number
contract RandomNumberarray{
    function random(uint[] memory _myArray) public view returns(uint[] memory){
        uint a = _myArray.length;
        uint b = _myArray.length;
        for(uint i = 0; i< b ; i++){
            uint randNumber =(uint(keccak256
            (abi.encodePacked(block.timestamp,_myArray[i]))) % a)+1;
            uint interim = _myArray[randNumber - 1];
            _myArray[randNumber-1]= _myArray[a-1];
            _myArray[a-1] = interim;
            a = a-1;
            
        }
        uint256[] memory result;
        result = _myArray;
        return result;
    }
// }

    // function rand() public view returns (uint256) {
    //     uint256 seed = uint256(
    //         keccak256(
    //             abi.encodePacked(
    //                 block.timestamp +
    //                     block.difficulty +
    //                     ((
    //                         uint256(keccak256(abi.encodePacked(block.coinbase)))
    //                     ) / (now)) +
    //                     block.gaslimit +
    //                     ((uint256(keccak256(abi.encodePacked(msg.sender)))) /
    //                         (now)) +
    //                     block.number
    //             )
    //         )
    //     );

    //     return (seed - ((seed / 1000) * 1000));
    // }
}