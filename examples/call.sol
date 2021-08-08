pragma solidity ^0.5.11;

contract Reciever {

  event Recieved(address caller, uint amount, string message);

  function () external payable {
    emit Recieved(msg.sender, msg.value, "Fallback was called");
  }

  function foo(string memory _message, uint _x) public payable returns (uint) {
    emit Recieved(msg.sender, msg.value, _message);

    return _x + 1;
  }
}

contract Caller {

}
