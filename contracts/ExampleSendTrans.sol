//SPDX-License-Identifier: MIT

pragma solidity 0.8.15;

contract Sender {
    receive() external payable { }

    function withdrawnTransfer(address payable _to) public {
        _to.transfer(10);
    }

    function withdrawSend(address payable _to) public{
        bool isSend= _to.send(10);

        require(isSend, "Sending the funds was unsuccessfull");
    }
}

contract ReceiverNoAction {

    function balance() public view returns(uint){
        return address(this).balance;
    }

    receive() external payable{}
}

contract ReceivedAction{
    uint public balanceReceived;

    receive() external payable {
        balanceReceived += msg.value;
    }

    
    function balance() public view returns(uint){
        return address(this).balance;
    }



}