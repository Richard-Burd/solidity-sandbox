pragma solidity ^0.5.11;

contract Fallback {
  event Log(uint gas);

  function() external payable {
    emit Log(gasleft());
  }
}
