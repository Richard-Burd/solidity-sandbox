pragma solidity ^0.5.3;

contract Gas {
  function testGasRefund() public returns (uint) {
    return tx.gasprice;
  }

  uint public i = 0;

  function forever() public {
    while(true) {
       i += 1;
    }
  }
}
