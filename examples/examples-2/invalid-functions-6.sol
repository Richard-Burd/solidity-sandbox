pragma solidity ^0.5.3;

contract Function {

  function returnMultipleVals() public pure returns (uint, bool, uint) {
    return (1, true, 2);
  }

  function destructuringAssignments() public pure returns (uint, bool, uint, uint, uint) {
    (uint i, bool b, uint j) = returnMultipleVals();

    (uint x, , uint y) = (4, 5, 6);

    return (i, b, j, x, y);
  }
}
