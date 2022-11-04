// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity >=0.8.17;

contract TodoList {
  uint public taskCount = 0;

  struct Task {
    uint id;
    string content;
    bool completed;
  }

 mapping(uint => Task) public tasks;

  constructor() {
    createTask("Check out dappuniversity.com");
  }

  function createTask(string memory _content) public {
    taskCount ++;
    tasks[taskCount] = Task(taskCount, _content, false);
  }

}