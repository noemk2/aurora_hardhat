// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Adoption {
    address[16] public adopters;
    constructor() {}
    //Adopting a pet
    function adopt(uint petID) public returns (uint) {
        require(petID >= 0 && petID <= 15);
        adopters[petID] = msg.sender;
        return petID;
    }

    //Retrieving the adopters
    function getAdopters() public view returns (address[16] memory) {
        return adopters;
    }

    
}