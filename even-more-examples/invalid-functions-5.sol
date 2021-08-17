pragma solidity ^0.5.3;

contract Function {

  function firstFunc() public returns (uint) {
    return 1;
  }

  function secondFunc() public returns (uint) {
    return 2;
  }

  function thirdFunc() public returns (uint, uint) {
    return (firstFunc(), secondFunc());
  }
}
