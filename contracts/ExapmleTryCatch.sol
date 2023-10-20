//SPDX-License-Identifier: MIT

pragma solidity 0.8.15;

contract WillThrow {
    error NorAllowedError(string);
    function aFunction() public pure{
        require(false, "Error message");
        revert NorAllowedError("You are not allowed");
    }
}

contract ErrorHandeling{
    event ErrorLogging(string reason);
    event ErroLogBytes(bytes lowLevelData);

    function catchTheError() public {
        WillThrow will= new WillThrow();
       try will.aFunction(){
        //barmi
       } catch Error(string memory reason) {
        emit ErrorLogging(reason);
       } catch(bytes memory lowLevelData){
        emit ErroLogBytes(lowLevelData);
       }

    }
}