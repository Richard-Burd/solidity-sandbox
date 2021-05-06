pragma solidity ^0.6.0;

contract MyContract2 {
    mapping(uint => string) public names;
    mapping(uint => Book) public books;
    mapping(address => mapping(uint => Book)) public myBooks;

    struct Book {
        string title;
        string author;
    }

    constructor() public {
        names[1] = "Adam";
        names[2] = "Bruce";
        names[3] = "Carl";
    }

    function addBook(uint _id, string memory _title, string memory _author) public {
        books[_id] = Book(_title, _author);
    }

    // here's nested mapping
    // mapping(key => mapping(uint => value2)) public myNestedMapping;
    mapping(address => mapping(uint => Book)) public myNestedMapping;

    function addMyBook(uint _id, string memory _title, string memory _author) public {
        // global variable 'message sender' (msg.sender)
        myBooks[msg.sender][_id] = Book(_title, _author);

    }
}
