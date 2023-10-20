//SPDX-License-Identifier: MIT

pragma solidity 0.8.15;

contract ExampleConstructor{

    address public myAddress;
    
    function setMyAddress(address _myAddress) public {
        myAddress= _myAddress;
    }
       function setMyAddressToMsg() public {
        myAddress= msg.sender;
    }
}