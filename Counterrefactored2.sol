// Counterrefactored2.sol 
// located in the main directory
pragma solidity ^0.6.0; // make sure the compiler on the left is using this version


contract Counterrefactored {
    // we can get rid of the getCount() function if we make this public
    uint public count = 0;

    function getCount() public view returns(uint){ 
        return count;
    }
    
    function incrementCount() public {
        count = count + 1;
    }
    
}

// left off at 17:47 / 1:51:32 @ https://www.youtube.com/watch?v=YJ-D1RMI0T0