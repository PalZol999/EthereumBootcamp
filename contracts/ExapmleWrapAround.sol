// SPDX-License-Identifier: MIT
pragma solidity 0.8.14;

contract ExampleWrapAround {
    uint256 public myUint;
    uint8 public myUint8;

    function setMyUnit(uint256 _myUnit) public {
        myUint = _myUnit;
    }

    function decrementUnit() public {
        unchecked {
            myUint--;
        }
    }

    function incrementUnit8() public {
        myUint8++;
    }
}
