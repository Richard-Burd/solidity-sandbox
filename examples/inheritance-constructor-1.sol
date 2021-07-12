pragma solidity ^0.5.3;

contract X {
  string public name;

  constructor(string memory _name) public {
    name = _name;
  }
}

contract Y {
  string public text;
  constructor(string memory _text) public {
    text = _text;
  }
}

contract B is X("Fixed input"), Y("Another fixed input") {

}

contract C is X, Y {
  constructor() X("Fixed input") Y("Another fixed input") public {

  }
}

contract D is X, Y {
  constructor(string memory _name, string memory _text) X(_name) Y(_text) public {

  }
}
