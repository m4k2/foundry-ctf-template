// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import "forge-std/Test.sol";
import "forge-std/console.sol";

contract ContractTest is Test {
    function setUp() public {

    }

    function testExploit() public {
        vm.createSelectFork(vm.rpcUrl("CTFnetwork"));
        

    }
}
