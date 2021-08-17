pragma solidity ^0.5.3;

contract A {
  event MyLogEvent(string message);

  function foo() public {
    emit MyLogEvent("A's foo func");
  }
}

contract B is A {
  function foo() public {
    emit MyLogEvent("B.foo called");
    A.foo();
  }
}

contract C is A {
  function foo() public {
    emit MyLogEvent("C's foo func");
    A.foo();
  }
}

contract D is B, C {

}
