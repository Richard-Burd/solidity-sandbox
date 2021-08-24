// SPDX-License-Identifier: MIT
// https://forum.openzeppelin.com/t/deploy-a-simple-erc20-token-in-remix/1203
// https://www.youtube.com/watch?v=wkISWhw7AP0
pragma solidity ^0.8.0;

// import latest version using https://remix.ethereum.org
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol";

contract Token is ERC20 {

  constructor () ERC20("Token", "TKN") {
    _mint(msg.sender, 1000000 * (10 ** uint256(decimals())));
  }
}
