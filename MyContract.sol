// this will showcase several features
pragma solidity ^0.6.0;

contract MyContract {
    // array of unsigned integers
    uint[] public myUintArray = [1, 2, 3];

    // mappings (Python Dictionary, Ruby Hash, JavaScript Object)
    // keys are uints and values are strings
    mapping(uint => string) public names;

    // let's make a constructor for the mapping
    // the constructor is a function that runs whenever
    // the smart contract is initialized or deployed to the blockchain
    constructor() {

    }

    // string array
    string[] public myStringArray = ["Sam", "Dan", "Cat"];

    // empty string array
    string[] public myEmptyArray;

    // two dimensional array
    uint[][] public array2D = [[1, 2, 3], [4, 5, 6]];

    function addValue(string memory _value) public {
        myEmptyArray.push(_value);
    }

    function valueCount() public view returns (uint) {
        return myEmptyArray.length;
    }


    // integer
    int public myInt = 1;

    // state variables are stored on the blockchain itself
    uint myUint = 1; // can't have a 'sign' like + or -

    // if I make it public, I can fetch the value later on
    uint myUint2 = 2; // uint == unsign integer

    // we can optomize performance by specifying the size
    // less size available means better performance
    uint8 public myUint8 = 1;

    // all regular uint's will default to the 256 value, or you can spell it out
    uint256 public myUint256 = 1;

    // other data types include a string
    string public myString = "My String";

    // we can optimize the data so it's faster:
    bytes32 public myBytes32 = "Hey there!";

    // address data type -- go to https://etherscan.io/ to grab a random address
    address public myAddress = 0x660F71884FdD99787bC95551322516bE6aF24962;

    // you can put your own data types inside a struct
    struct MyStruct {
        uint myUint;
        string myString;
    }

    // now we need to fetch the struct, let's instantiate it
    MyStruct public myStruct = MyStruct(1, "Hello");

    //local variables sore info inside function
    function getValue() public pure returns(uint) {
        uint anotherUint = 1;
        return anotherUint;
    }
}
