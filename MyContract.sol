// this will showcase several features
pragma solidity ^0.6.0;

contract MyContract {
    // state variables are stored on the blockchain itself
    uint myUint = 1;

    // if I make it public, I can fetch the value later on
    uint myUint2 = 2;

    //local variables sore info inside function
    function getValue() public pure returns(uint) {
        uint value = 1; //unside integer, it cannot be negative
        return value;
    }
}
// 
