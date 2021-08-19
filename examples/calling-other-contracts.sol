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

contract Caller {
  function setX(Callee _callee, uint _x) public {
      uint x = _callee.setX(_x);
  }

  function setXFromAddress(address _addr, uint _x) public {
    Callee callee = Callee(_addr);
    uint x = callee.setX(_x);
  }

  function setXAndSendEther(Callee _callee, uint _x) public payable {
    (uint x, uint value) = _callee.setXAndSendEther.value(msg.value)(_x);
  }
}

contract Foo {
  uint public x;

  function setX(uint _x) public returns (uint) {
    x = _x + 1;
    return 0;
  }
}
