pragma solidity ^0.5.12;

contract Order {
  enum Status {
    Pending,  // 0
    Shipped,  // 1
    Accepted, // 2
    Rejected, // 3
    Canceled  // 4
  }

  Status public currentStatus;

  function ship() public {
    require(currentStatus == Status.Pending);
    currentStatus = Status.Shipped;
  }

  function acceptDelivery() public {
    require(currentStatus == Status.Shipped);
    currentStatus = Status.Accepted;
  }

  function rejectDelivery() public {
    require(currentStatus == Status.Shipped);
    currentStatus = Status.Rejected;
  }

  function cancel() public {
    require(currentStatus == Status.Pending);
    currentStatus = Status.Canceled;
  }
}
