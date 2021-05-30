pragma solidity ^0.6.0;

contract HotelRoom {

    // Enum's keep trach of options that will never change
    enum Statuses { Vacant, Occupied }

    // 'events' allow external consumers to subscribe to them,
    // and find out that s.thing happened in a smart contract
    event Occupy(address _occupant, uint _value);

    // address means it is an Etherium address, payable means that address
    // can receive payment
    address payable public owner;
    Statuses currentStatus;

    // constructor is the fuinction that gets called whenever this smart contract is created
    // or deployed to the blockchain...it is ran once & only once
    constructor() public {
        // msg.sender is always the user that is calling this function
        owner = msg.sender;

        // in the constructor we need a default status for the room (vacant or occupied)
        currentStatus = Statuses.Vacant;
    }

    // use modifier to set a requirement
    modifier onlyWhileVacant {
        require(currentStatus == Statuses.Vacant, "Currently occupied.");
        _; // this is what executes the function body
    }

    modifier costs (uint _amount) {
        require(msg.value >= _amount, "Not enough Ether provided.");
        _; // this is what executes the function body
    }

    // this pays the owner to book the hotel room...
    // ...it is a function, but it's a special function called 'receive'
    // this creates a functions that is triggered whenever you
    // just pay this smart contract, it must be external so it can be
    // called outside the smart contract
    receive() external payable onlyWhileVacant costs(2 ether) {
        // solidity has these things called requirements
        // the requirements must be meet...
        // require(msg.value >= 2 ether, "Not enough Ether provided."); //this got moved

        // ...before the rest of this code is executed
        currentStatus = Statuses.Occupied;

        // this is the value that will be sent, in order to do that,
        // this function must be labeled 'payable' above
        owner.transfer(msg.value);

        // this fires off the 'Occupy' event declared above
        emit Occupy(msg.sender, msg.value);
    }
}
