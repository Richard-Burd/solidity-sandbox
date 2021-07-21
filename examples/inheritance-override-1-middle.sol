pragma solidity ^0.5.3;

contract A {
  string public name;

  constructor(string memory _name) public {
  name = _name;
  }
}

contract B is A {
  constructor() A("Contract B") public {
  }
}
