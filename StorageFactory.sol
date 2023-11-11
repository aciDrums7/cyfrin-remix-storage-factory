// SPDX-License-Identifier: MIT

pragma solidity ^0.8.23;

// named import
import {SimpleStorage /*, SimpleStorage3*/ } from "./SimpleStorage.sol";

contract StorageFactory {
    SimpleStorage[] public simpleStorageContractsList;

    function createSimpleStorageContract() public {
        // How does the storage factory knows what SimpleStorage looks like?
        // 'new' keyword is used to create contracts, not struct
        simpleStorageContractsList.push(new SimpleStorage());
    }

    function sfStore(uint256 _simpleStorageIndex, uint256 _newFavoriteNumber)
        public
    {
        // Contract Address
        // ABI -> Application Binary Interface
        simpleStorageContractsList[_simpleStorageIndex].store(
            _newFavoriteNumber
        );
    }

    function sfGet(uint256 _simpleStorageIndex) public view returns (uint256) {
        return simpleStorageContractsList[_simpleStorageIndex].retrieve();
    }
}
