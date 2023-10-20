//SPDX-License-Identifier: MIT

pragma solidity 0.8.15;

contract TheBlockchainMessanger {
    uint public changeCounter;

    address public owner;

    string public theMessage;


    constructor(){
        owner = msg.sender;
    }

    function updateMessage(string memory _myMessage) public {
        if (msg.sender == owner){
            theMessage = _myMessage;
            changeCounter++;
        }
    }



}