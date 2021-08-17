pragma solidity ^0.5.3;

contract FuncModifier {
  address public owner;

  constructor() public {
    owner = msg.sender;
  }

  modifier onlyOwner() {
    require(msg.sender == owner, "Not owner");
    _;
  }

  modifier validAddress(address _addr) {
    require(_addr != address(0), "Not valid address");
    _;
  }

  function changeOwner(address _newOwner) public onlyOwner validAddress(_newOwner) {
    owner = _newOwner;
  }

  uint public x = 10;
  bool locked;

  modifier noReentrancy(){
    require(!locked, "Locked");

    locked = true;
    _;
    locked = false;
  }

  function decrement(uint i) public noReentrancy {
    x = i;
    if(i > 1) {
      decrement(i - 1);
    }
  }
}
