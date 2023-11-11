// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

import { SimpleStorage } from "./SimpleStorage.sol";

contract AddFiveStorage is SimpleStorage {
    function sayHello() public pure returns(string memory) {
        return "Hello psychonaut :)";
    }

    function store(uint256 _newFavoriteNumber) public override {
        myFavoriteNumber = _newFavoriteNumber + 7;
    }
}