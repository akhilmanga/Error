// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.18;

contract Error {
    function testRequire(uint _i) public pure {
        require(_i <= 10, "i > 10");
    }

    function testRevert(uint _i) public pure {
        if(_i < 10) {
            revert("_i < 10");
        }
    }

    uint public num = 4444;

    function testAssert() public view {
       assert(num == 4444);
    }

    


    error MyError(address caller, uint i);

    function testCustomError(uint _i) public view {
        if(_i > 10) {
            revert MyError(msg.sender, _i);
        }
    }
} 