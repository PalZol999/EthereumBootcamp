//SPDX-License-Identifier: MIT

pragma solidity 0.8.15;

contract ExampleString {
    string public myString = "Hello World";

    function setMySting(string memory _myString) public {
        myString = _myString;
    }

    function compareTwoString(string memory _mystring) public view returns (bool){
        return keccak256(abi.encodePacked(myString)) == keccak256(abi.encodePacked(_mystring));
    }

}