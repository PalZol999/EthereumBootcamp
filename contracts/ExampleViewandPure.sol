//SPDX-License-Identifier: MIT

pragma solidity 0.8.15;

contract ExampleViewandPure {

    uint public myStotageVariable;

    function getMyStorageVaribale() public view returns(uint){
        return myStotageVariable;
    }

    function getAddition(uint a, uint b) public pure returns(uint){

        return a+b;
    }

    function  setMyStorageVaribale(uint _newVar) public returns(uint){
        myStotageVariable= _newVar;
        return _newVar;
    }

}