pragma solidity ^0.5.11;

contract Base {
  string private privateVar = "my private variable";
  string internal internalVar = "my internal variable";
  string public publicVar = "my public variable";
  string external externalVar = "my external variable";

  function privateFunc() private pure returns (string memory) {
    return "private function called";
  }

  function testPrivateFunc() public pure returns (string memory) {
    return privateFunc();
  }

  function internalFunc() internal pure returns (string memory) {
    return "internal function called";
  }

  function testInternalFunc() public pure returns (string memory) {
    return internalFunc();
  }

  function publicFunc() public pure returns (string memory) {
    return "public function called";
  }

  function externalFunc() external pure returns (string memory) {
    return "external fuunction called";
  }

  function testExternalFunc() public pure returns (string memory) {
    return externalFunc();
  }
}

contract Child is Base {
  function testInternalFunc() public pure returns (string memory) {
    return internalFunc();
  }
}
