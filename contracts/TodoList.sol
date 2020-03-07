pragma solidity ^0.5.0;

contract TodoList {
  uint public studCount = 0;

  struct AtData {
    uint id;
    string name;
    address studAddress;
    string date;
  }

  mapping(uint => AtData) public atlist;

  event AttendanceMarked(
    uint id,
    string name,
    address studAddress,
    string date
  );


  constructor() public {
  }

  function markPresent(string memory _name, string memory _date) public {
    address studAddress = msg.sender;
    studCount ++;
    atlist[studCount] = AtData(studCount, _name, studAddress, _date);
    emit AttendanceMarked(studCount, _name, studAddress, _date);
  }

}
