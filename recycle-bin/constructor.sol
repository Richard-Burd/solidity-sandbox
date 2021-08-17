pragma solidity ^0.5.3;

contract Constructor {
  uint public x;
  uint public z;

  address public owner;
  uint public createdAt;

  constructor(uint _x, uint _z) public {
    x = _x;
    z = _z;

    owner = msg.sender;
    createdAt = block.timestamp;
  }
}
