// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.7.6;

import "forge-std/Test.sol";
import "src/FortStrings.sol";
import { SafeMathUpgradeable } from "@openzeppelin-upgradeable/contracts/math/SafeMathUpgradeable.sol";

contract ContractTest is Test {
    using SafeMathUpgradeable for uint256;

    function setUp() public {}

    function testStrings() public {
        uint256 length = 2;
        emit log_uint(length);
        length = length.mul(2).add(2);
        emit log_uint(length);
        assertEq(length, 6);
    }
}
