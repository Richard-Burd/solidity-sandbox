pragma solidity ^0.5.3;

contract A {
  function getContractName() public pure returns (string memory) {
    return "Contract A";
  }
}

contract B is A {
  function getContractName(uint i) public pure returns (string memory) {
    return "Contract B";
  }
}
