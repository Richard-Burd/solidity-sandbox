pragma solidity ^0.5.11;

contract A {
  address public myAddress = 0x0100000000000000000000000000000000000001;

  function getAddress() public view returns (address) {
    return myAddress;
  }
}

contract B is A {
  address public myAddress = 0x0200000000000000000000000000000000000002;
}

contract C is A {
  constructor() public {
    myAddress = 0x0300000000000000000000000000000000000003;
  }
}
