pragma solidity ^0.5.3;

contract Function {
  uint MAX_ARR_LENGTH = 10;

  function arrayInput(uint[] memory _arr) public {
    if (_arr.length > MAX_ARR_LENGTH) {
      // throw error
    }
  }
}
