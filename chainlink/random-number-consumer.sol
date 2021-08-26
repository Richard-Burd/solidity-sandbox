// SPDX-License-Identifier: MIT

// NOTE: in order for this to work, Metamast & the Kovan network need to be setup...
// ...this video series walks through that process:
// Chainlink Engineering Tutorials
// https://www.youtube.com/playlist?list=PLVP9aGDn-X0QwJVbQvuKr-zrh2_DV5M6J

// Video 3 of 19
// Getting A Random Number with Chainlink VRF | Chainlink Engineering Tutorials - https://www.youtube.com/watch?v=JqZWariqh5s
// Documentation: https://docs.chain.link/docs/get-a-random-number/
pragma solidity ^0.8.7;

import "https://github.com/smartcontractkit/chainlink/blob/develop/contracts/src/v0.8/VRFConsumerBase.sol";

contract RandomNumberConsumer is VRFConsumerBase {
  bytes32 public keyHash; // used to identify which Chainlink oracle we use to get a random number
  uint256 public fee; // the link token (link oracle) fee to pay the Chainlink node to get the random number
  uint256 public randomResult; // random number returned from the Chainlink node

  // since we're importing from VRFConsumerBase.sol, we also need to use its constructor
  constructor()
    VRFConsumerBase(
      // address of the contract that verifies that the numbers returned by the Chainlink oracle are actually random
      0xdD3782915140c8f3b190B5D67eAc6dc5760C46E9, // VRF Coordinator address  (unique to the kovan network)

      0xa36085F69e2889c224210F603D836748e7dC0088  // kovan LINK token address (unique to the kovan network)
    ) public
  {
    keyHash = 0x6c3699283bda56ad74f6b855546325b68d482e983852a7a82979cc4807b641f4;
    fee = 0.1 * 10 ** 18; // 0.1 LINK (Varies by network)
  }

  // we need to call a function that VRFConsumerBase.sol is looking for called requestRandomness()
  // the userProvidedSeed helps the oracle get started with its randomness, the VRFConsumerBase.sol
  // uses it to check if the number is random or not
  function getRandomNumber(uint256 userProvidedSeed) public returns (bytes32 requestId){
    return requestRandomness(keyHash, fee, userProvidedSeed);
  }

  function fulfillRandomness(bytes32 requestId, uint256 randomness) internal override {
    randomResult = randomness;
  }
}







// ...
