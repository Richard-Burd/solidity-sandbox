pragma solidity ^0.5.3;

contract Function {
  mapping(uint => uint) map;
  uint[] arr;
  uint[9][9] arr2DFixed;
  uint arr2D;

  function mapOutput() public returns (mapping(uint => uint) memory) {
    return map;
  }

  function multiDimFixedSizeArrayOutput() public view returns (uint[9][9] memory) {
    return arr2DFixed;
  }

  function multiDimDynamicSizeArrayOutput() public returns (uint[][] memory) {
    return arr2D;
  }

  function arrayOutput() public view returns (uint[] memory) {
    return arr;
  }
}
