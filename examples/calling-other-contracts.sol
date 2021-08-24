pragma solidity ^0.8.7; // newer version using newer syntax

contract Callee {
  uint public x;
  uint public value;

  function setX(uint _x) public returns (uint) {
    x = _x;
    return x;
  }

  function setXAndSendEther(uint _x) public payable returns (uint, uint) {
    x = _x;
    value = msg.value;

    return (x, value);
  }
}

contract Caller {
  function establishX(Callee _callee, uint _x) public {
      uint x = _callee.setX(_x);
  }

  function setXFromAddress(address _addr, uint _x) public {
    Callee callee = Callee(_addr);
    uint x = callee.setX(_x);
  }

  function setXAndSendEther(Callee _callee, uint _x) public payable {
    (uint x, uint value) = _callee.setXAndSendEther{value: msg.value}(_x); // newer syntax
  }
}

contract Foo {
  uint public x;

  function setX(uint _x) public returns (uint) {
    x = _x + 1;
    return 0; // requires a return value (that we don't want) in order to be accessed by another func.
  }
}

contract Bar { // doesn't work like Foo() above b.c. return value missing
  uint public x;

  function setX(uint _x) public {
    x = _x + 1;
  }
}

contract Lar { // works like Foo() above b.c. return value exists, NOTE: we aren't using this return value
  uint public x;
  uint public y;

  function setX(uint _x) public returns (uint) {
    x = _x + 1;
    return y;
  }
}
