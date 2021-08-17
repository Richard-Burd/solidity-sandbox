pragma solidity ^0.5.3;

contract A {
  event MyLogEvent(string message);

  function foo() public {
    emit MyLogEvent("A's foo func");
  }

  function bar() public {
    emit MyLogEvent("A's bar func");
  }
}

contract B is A {
  function foo() public {
    emit MyLogEvent("B.foo called");
    A.foo();
  }

  function bar() public {
    emit MyLogEvent("B's bar func");
    super.bar();
  }
}

contract C is A {
  function foo() public {
    emit MyLogEvent("C's foo func");
    A.foo();
  }

  function bar() public {
    emit MyLogEvent("C's bar func");
    super.bar();
  }
}

contract D is B, C {

}
