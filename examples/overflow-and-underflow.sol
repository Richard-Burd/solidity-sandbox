pragma solidity ^0.5.11;

contract Account {
  uint public balance;
  uint public constant MAX_UINT = 2 ** 256 -1;

  function increase(uint _amount) public {
    uint oldBalance = balance;
    balance += _amount;
  }

  function decrease(uint _amount) public {
    uint oldBalance = balance;
    balance -= _amount;
  }

}
