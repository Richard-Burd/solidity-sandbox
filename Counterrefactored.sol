pragma solidity ^0.6.0; // make sure the compiler on the left is using this version


contract Counterrefactored {
    uint count = 10; // we can get rid of the constructor and make this '0'

    function getCount() public view returns(uint){
        return count;
    }

    function incrementCount() public {
        count = count + 1;
    }

}
