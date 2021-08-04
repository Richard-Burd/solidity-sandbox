pragma solidity ^0.5.12;

contract Todos {
  struct Todo {
    string text;
    bool completed;
  }

  Todo[] public todos;

  function create(string memory _text) public {
    // initialization method #1
    todos.push(Todo(_text, false));

    /*
    // initialization method #2
    todos.push(
      Todo({
        text: _text,
        completed: false
      })
    );

    // initialization method #3
    todos.push(
      Todo memory todo;
      todo.text = _text;
      // todo.completed = false
    )
    */

  }

  function get(uint _index) public view returns (string memory text, bool completed) {
    Todo storage todo = todos[_index];
    return (todo.text, todo.completed);
  }

  function update(uint _index, string memory _text) public {
    Todo storage todo = todos[_index];
    todo.text = _text;
  }

  function toggleCompleted(uint _index) public {
    Todo storage todo = todos[_index];
    todo.completed = !todo.completed;
  }
}
