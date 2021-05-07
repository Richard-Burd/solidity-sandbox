pragma solidity ^0.6.0;

contract MyContract3 {
    uint[] public numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

    address public owner;

    constructor() public {
        owner = msg.sender;
    }

    function countEvenNumbers() public view returns(uint) {
        uint count = 0;

        // syntax is like JavaScript
        for(uint i = 0; i < numbers.length; i++) {
            if(isEvenNumber(numbers[i])) {
                count ++;
            }
        }
        return count;

    }

    // conditionals
    function isEvenNumber(uint _number) public view returns(bool) {
        if(_number % 2 == 0) {
            return true;
        } else {
            return false;
        }
    }

    function isOwner() public view returns(bool) {
        if(msg.sender == owner) {
            return true;
        } else {
            return false;
        }
    }

    function isOwnerRefactored() public view returns(bool) {
        // you don't need the if-else sentence,
        return(msg.sender == owner);
    }

}
