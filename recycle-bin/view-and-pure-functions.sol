pragma solidity ^0.5.3;

contract ViewAndPure {
  uint public x = 1;

  function addToX(uint y) public view returns (uint) {
    return x + y;
  }

  function updateX() public view {
    x += 1;
  }

  function foo() public {}

  function viewFunc() public view {}

  function invalidViewFunc() public view {
    foo();
  }

  function invalidPureFunc() public pure {
    viewFunc();
  }

  function add(uint i, uint j) public pure returns (uint) {
    return i + j;
  }
}
