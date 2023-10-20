// SPDX-License-Identifier: MIT
pragma solidity 0.8.15;

contract MyContract{

    uint[] numero=[1,2,3,4,5,6];

    function numOfEven() public view returns(uint) {
       uint count = 0;

        for (uint i=0; i < numero.length; i++){
            if (isEven(numero[i])){
                count++;
            }
        }
         return count;
    }

    function isEven(uint _num) public view returns(bool){
        if(_num %2 == 0){
            return true;
        }else {
            return false;
        }
    }

}