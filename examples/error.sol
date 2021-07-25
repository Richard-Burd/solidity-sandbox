pragma solidity ^0.5.11;

contract Account {
  uint public balance;

  function deposit(uint _amount) public {
    uint oldBalance = balance;
    balance += _amount;

    assert(balance >= oldBalance);
  }

  function withdraw(uint _amount) public {
    uint oldBalance = balance;
    balance -= _amount;

    assert(balance <= oldBalance);
  }

}
