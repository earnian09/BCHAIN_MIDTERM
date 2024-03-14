pragma solidity ^0.8.3;

import "./Structs_demo1.sol";

contract Todos {
    Todo[] public todos;

    function todoList() public{
        Todo memory newTask = Todo("blockchain", true);
        todos.push(newTask);
    }
} 