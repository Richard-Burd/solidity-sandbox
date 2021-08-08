pragma solidity ^0.5.11;

contract Fallback {
  event Log(uint gas);

  function() external payable {
    emit Log(gasleft());
  }

  function getBalance() public view returns (uint) {
    return address(this).balance;
  }
}

contract SendToFallback {
  function transferToFallback(address payable _to) public payable {
    _to.transfer(msg.value);
  }

  function callFallback(address payable _to) public payable {
    (bool sent,) = _to.call.value(msg.value)("");
    require(sent, "Failed to send Ether");
  }
}
