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
