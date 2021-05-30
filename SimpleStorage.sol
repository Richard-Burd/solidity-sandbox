//  Smart Contract Programmer
// https://www.youtube.com/watch?v=4XQsHBJScEk&list=PLO5VPQH6OWdULDcret0S0EYQ7YcKzrigz&index=2
// left off at 2:12 / 8:12

// There are 2 types of functions in Solidity:

// => Functions that create transaction on the blockchain.
//    => changing the value of a state variable which changes the state of the smart contract
//    => sending Ether to another account and thus changing balances
// => Functions that do not create transaction on the blockchain
//    => These functions are free to call and they do not change the state of the blockchain

pragma solidity ^0.5.3;

// there are 2 ways to get state variables in Solidity: 
//=> write your own function to return the state variable 
//=> let the solidity compiler write one for you

contract SimpleStorage {
    // state variables are declared outside functions & are stored on the blockchain
    // variables declared inside a function are only available w/function call & not stored on the blockchain
    // state variables have no underscore "_"
    // function inputs DO have an underscore "_" such as with "_text" below
    // the underscore is done to avoid using the same names for state variables and function inputs
    string public text;
    
    // memory specifies the data location (options are: storage & memory)
    // => storage: tells solidity that our value is stores somewhere on the contract 
    // => memory: tells solidity that the value is coming from outside the contract 
    //    => in public functions, inputs MUST be declared as memory
    function set(string memory _text) public { //setter function
        text = _text;
    }
    
    // the "view" below declares that your code does not change the state of the blockchain
    // the alternate "pure" declares that your code does not change the state of the blockchain, and 
    // it also does not read any state variables
    function get() public view returns (string memory) { // getter function
        // this is a state variable declared in the higher scope, 
        // so this function is declared to be "view" instead of "pure"
        return text;
    }
}