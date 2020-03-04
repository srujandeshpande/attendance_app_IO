pragma solidity ^0.5.0;

contract TodoList {
  uint public studCount = 0;

  struct Task {
    uint id;
    string name;
    address studAddress;
  }

  mapping(uint => Task) public tasks;

  event TaskCreated(
    uint id,
    string name,
    address studAddress
  );


  constructor() public {
    //createTask("Srujan aka the SME");
  }

  function markPresent(string memory _name) public {
    address studAddress = msg.sender;
    for(uint i = 1;i<=studCount;i++) {
      if(tasks[i].studAddress == studAddress) {
        return;
      }
    }
    studCount ++;
    tasks[studCount] = Task(studCount, _name, studAddress);
    emit TaskCreated(studCount, _name, studAddress);
  }

}
