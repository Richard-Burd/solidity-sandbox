pragma solidity ^0.8.7;

contract Car {
  string public model;
  address public owner;

  constructor(string memory _model, address _owner) public payable {
    model = _model;
    owner = _owner;
  }
}

contract CarFactory {
  Car[] public cars;

  function create(string memory _model) public {
    Car car = new Car(_model, address(this));
    cars.push(car);
  }

  function createAndSendEther(address _owner, string memory _model) public payable {
    Car car = (new Car){value: msg.value}(_model, _owner);
    cars.push(car); // missing from video, but needed to find address of car to call it [Car] "at address"
  }
}
