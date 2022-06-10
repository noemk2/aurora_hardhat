// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract Ejemplo {

    uint[] public variableGlobal;

    constructor() {
        variableGlobal.push(2);
    }

    function miFuntion() view public returns (uint, uint){

        uint[] memory variableFuncion = variableGlobal;
        variableFuncion[0] = 5 ;
        return (variableGlobal[0] , variableFuncion[0]);
    }

    
    function miFuntion2() payable public returns (uint, uint){

        uint[] storage variableFuncion = variableGlobal;
        variableFuncion[0] = 5;
        return (variableGlobal[0], variableFuncion[0]);
    }
}