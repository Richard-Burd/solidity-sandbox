pragma solidity ^0.5.12;

contract Wallet {

  event Deposit(address sender, uint amount, uint balance);
  event Withdraw(uint amount, uint balance);
  event Transfer(address to, uint amount, uint balance);

  address payable public owner;

  constructor() public payable {

  }

  function deposit() public payable {
    emit Deposit(msg.sender, msg.value, address(this).balance);
  }

  function notPayable() public {

  }

  modifier onlyOwner() {
    require(msg.sender == owner, "Not owner");
    _;
  }

  function withdraw(uint _amount) public onlyOwner {
    owner.transfer(_amount);
  }
}
