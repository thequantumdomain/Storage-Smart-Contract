// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

import {Script} from "forge-std/Script.sol";
import {SimpleStorage} from "../src/SimpleStorage.sol";

contract DeploySimpleStorage is Script{
    function run() external returns(SimpleStorage){
        vm.startBroadcast(); // send everything in the line after the function, send to RPC, any function to send, between vms
        SimpleStorage simpleStorage = new SimpleStorage(); // new creates new contract between vm broadcasts, send tx to create new simplestorage contract
        vm.stopBroadcast();
        return simpleStorage;           // running forge script with no specified RPCurl, will deploy default to a temporary anvil chain
    }
}