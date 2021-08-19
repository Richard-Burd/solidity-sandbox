pragma solidity ^0.8.7;

contract A {
  uint public num;
  address public sender;
  uint public value;

  function setVars(address _contract, uint _num)  public payable {
    (bool success, bytes memory data) = _contract.delegatecall(
      abi.encodeWithSignature("setVars(uint256)", _num)
    );
  }
}

contract B {
  uint public num;
  address public sender;
  uint public value;

  function setVars(uint _num) public payable {
    num = _num; // different than contract B2
    sender = msg.sender;
    value = msg.value;
  }
}

contract B2 {
  uint public num;
  address public sender;
  uint public value;

  function setVars(uint _num) public payable {
    num = 2 * _num; // different than contract B
    sender = msg.sender;
    value = msg.value;
  }
}