pragma solidity ^0.5.3;

contract A {
   function foo() public pure returns (string memory) {
      return "A";
   }
}

contract B is A {

   // foo is not defined here

}

contract C is A, B {
    // foo is not defined here
}

contract D is A, C {
    // foo is not defined here
}
