// SPDX-License-Identifier: MIT
// build a token without OpenZeppelin from scratch
// https://youtu.be/XdKv5uwEk5A

pragma solidity ^0.8.7;

import 'https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol';

// https://youtu.be/ZLFiGHIxS1c?t=507
contract BurdCoin is ERC20 {
  address public admin; // owner of the currency
  constructor() ERC20('BurdCoin', 'BRC'){
    _mint(msg.sender, 10000 * 10 ** 18); //10k tokens with denomination of 10^18 (like Ether & Gas)
    admin = msg.sender;
  }

  function mint(address to, uint amount) external {
    require(msg.sender == admin, 'only admin'); // only admin can call this function
    _mint(to, amount); // "_burn" defined in OpenZeppelin's ERC20.sol
  }

  function burn(uint amount) external {
    _burn(msg.sender, amount); // "_burn" defined in OpenZeppelin's ERC20.sol
  }
}

// Make a token in Truffle framework
// https://youtu.be/_ikc4Ct7wvk

// Mocha testing framework (w/Chai assertions)
// https://youtu.be/v90hvMEjf_Q
