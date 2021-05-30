// First declare the version of solidity
pragma solidity ^0.6.0; // make sure the compiler on the left is using this version

//declare your smart contract
contract Counter {
    // create a basic variable that will be a 'state variable' which means it gets stored to the blockchain itself
    uint count; // uint cannot be negative, but is an integer

    // we need a constructor function to set the initial value of the 'count' variable above
    // this is ran once & only once, when we put this smart contract on the blockchain
               // public <--this is here because this function must be ran in a migration
    constructor() public {
        count = 0;
    }

                             //view means we want to see the 'counter' but not change it
    function getCount() public view returns(uint){ // internal, public, etc. are modifiers
        return count;
    }

    function incrementCount() public {
        count = count + 1; // here we're updating the blockchain
    }

}
