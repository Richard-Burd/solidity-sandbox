pragma solidity ^0.8.7;

contract Callee {
  uint public x;
  uint public value;

  function setX(uint _x) public returns (uint) {
    x = x;
    return x;
  }

  function setXandSendEther(uint _x) public payable returns (uint, uint) {
    x = _x;
    value = msg.value;

    return (x, value);
  }
}
