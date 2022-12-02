// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.7.0 <0.9.0;

import "@openzeppelin/contracts/utils/Strings.sol";

/**
 * @title BlockTest
 * @dev Store & retrieve value in a variable
 */
contract BlockTest {

    /**
     * @dev Return value
     * @return value of 'number'
     */
    function retrieve(uint256 num) public view returns (string){
        return string.concat("Block #: ", Strings.toString(num), " Blockhash:" , toHexString(uint256(blockhash(num))));
    }
}
