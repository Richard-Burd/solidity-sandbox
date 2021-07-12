pragma solidity ^0.5.3;

contract A {
   function foo() public pure returns (string memory) {
      return "A";
   }
}

contract B is A {
   function foo() public pure returns (string memory) {
      return "B";
   }
}

contract C is A, B {
  //=> foo returns "B"
}

contract C is B, A {
  //=> foo returns "A"
}

contract D is C, B, A {
  //=> foo returns "A"
}
