pragma solidity ^0.5.0;

contract TodoList {
  uint public studCount = 0;

  struct Task {
    uint id;
    string name;
    address studAddress;
    string date;
  }

  mapping(uint => Task) public tasks;

  event TaskCreated(
    uint id,
    string name,
    address studAddress,
    string date
  );


  constructor() public {
    //createTask("Srujan aka the SME");
  }

  function markPresent(string memory _name, string memory _date) public {
    address studAddress = msg.sender;
    studCount ++;
    tasks[studCount] = Task(studCount, _name, studAddress, _date);
    emit TaskCreated(studCount, _name, studAddress, _date);
  }

}
