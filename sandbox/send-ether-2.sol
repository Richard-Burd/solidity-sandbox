pragma solidity ^0.8.6;

contract ReceiveEther {
  fallback () external payable {}

  function getBalance() public view returns (uint) {
    return address(this).balance;
  }
}

contract SendEther {
  function sendViaCall(address payable _to) public payable {
    (bool sent, bytes memory data) = _to.call{value: msg.value}("");
    require(sent, "Failed to send Ether");
  }

  // this will not work
  function sendViaHardCodedCall(address payable _to) public payable {
    (bool sent, bytes memory data) = _to.call{value: 2 ether}("");
    require(sent, "Failed to send Ether");
  }
}
