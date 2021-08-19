pragma solidity ^0.5.11;

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
  function setX(Callee _callee, uint _x) public {
      uint x = _callee.setX(_x);
  }

  function setXFromAddress(address _addr, uint _x) public {
    Callee callee = Callee(_addr);
    uint x = callee.setX(_x);
  }

  function setXAndSendEther(Callee _callee, uint _x) public payable {
    // after verifying e.thing works in the Remix IDE when contracts are deployed,
    // change the version of this file to: pragma solidity ^0.8.7
    // then update the line below:
    // .......... value) = _callee.setXAndSendEther{value: msg.value}(_x); ... note the "_x" may s.how have to go in the {}
    (uint x, uint value) = _callee.setXAndSendEther.value(msg.value)(_x);
  }
}

//contract Foo {
//  uint public x;
//
//  function setX(uint _x) public returns (uint) {
//    x = _x + 1;
//    return 0;
//  }
//}
