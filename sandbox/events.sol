pragma solidity ^0.7.6;

contract Event {
  event someLog(address indexed sender, string message);
  event AnotherLog();

  function fireEvents() public {
    emit someLog(msg.sender, "Hello World!");
    emit someLog(msg.sender, "Hello EVM!");
    emit AnotherLog();
  }
}
