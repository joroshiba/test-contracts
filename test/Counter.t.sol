// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/Counter.sol";

contract CounterTest is Test {
    Storage public counter;

    function setUp() public {
        counter = new Storage();
        counter.store(0);
    }


    function testSetNumber(uint256 x) public {
        counter.store(3);
        assertEq(counter.retrieve(), x);
    }
}
