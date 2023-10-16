// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import "forge-std/Test.sol";
import "forge-std/console.sol";
import "../src/chall.sol";

contract ContractTest is Test {

    Chall public chall;
    function setUp() public {
        chall = new Chall();
    }

    function testExploit() public {
        vm.createSelectFork(vm.rpcUrl("CTFnetwork"));
        

    }
}
