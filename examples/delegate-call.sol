pragma solidity ^0.8.7;

contract B {
  uint public num1;
  uint public num2;
  address public sender;
  uint public value;

  function setVars(uint _num) public payable {
    num1 = _num;
    num2 = 2 * _num;
    sender = msg.sender;
    value = msg.value;
  }
}

contract A {
  uint public num1;
  uint public num2;
  address public sender;
  uint public value;

  function setVars(address _contract, uint _num)  public payable {
    (bool success, bytes memory data) = _contract.delegatecall(
      abi.encodeWithSignature("setVars(uint256)", _num)
    );
  }
}
