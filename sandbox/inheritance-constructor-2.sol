pragma solidity ^0.5.3;

contract X {
  event Log(string message);
  string public name;
  constructor(string memory _name) public {
    name = _name;
    emit Log(_name);
  }
}

contract Y {
  event Log(string message);
  string public text;
  constructor(string memory _text) public {
    text = _text;
    emit Log(_text);
  }
}

contract E is X, Y {
  constructor() X("X called from E") Y("Y called from E") public {

  }
}

contract F is X, Y {
  constructor() Y("Y called from F") X("X called from F") public {

  }
}
