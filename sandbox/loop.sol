pragma solidity ^0.8.6;

contract Loop {
  uint public count;

  function loop(uint n) public {
    for (uint i = 0; i < n; i++) {
      count += 1;
    }
  }
}

contract Dividend {
  address[100] public shareholders;

  function pay() public {
    for (uint i = 0; i < shareholders.length; i++) {
      // send Ether to each shareholder
    }
  }
}
