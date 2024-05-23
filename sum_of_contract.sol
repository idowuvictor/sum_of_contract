// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

interface IMultiply {
   function multiply() external view returns(uint);    
}

abstract contract SumAbstract {

   function sum() virtual public view returns(uint);
}

contract sumofcontract is SumAbstract {
    function sum() public pure override returns(uint){
        uint a = 20;
        uint b = 10;
        uint sumTotal = a + b;
        return sumTotal;
    }
}

contract Multiply is IMultiply {
   function multiply() public pure override returns(uint) {
        uint a = 20;
        uint b = 10;
        uint multiplyTotal = a * b;
        return multiplyTotal;
   }  
} 