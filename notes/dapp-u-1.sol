// covered everything up to here: https://youtu.be/YJ-D1RMI0T0?t=2409

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract DataTypes {
  // state variables
  string public myString = "Hello World!";    // less optimal [more gas]
  bytes32 public myBytes32 = "Hello, World!"; // more optimal [less gas]
  int public myInt = -2;
  uint public myUint = 1; // unsigned, no + or - in front of it; - shorthand for uint256
  uint256 public myUint256 = 1000000000; // sacrifices performance, use for big numbers [more gas] 2^256
  uint8 public myUint8 = 1; // more optimal (memory-wise)if the number is small enough  [less gas] 2^8?
  address public myAddress = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;

  // custom data structures (struct)

  // local variables
  function getValue() public pure returns(uint) {
    uint value = 1;
    return value;
  }
}
