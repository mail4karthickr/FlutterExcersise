import 'package:flutter/material.dart';
import 'ToDo.dart';
import 'DetailScreen.dart';

void main() {
  runApp(MaterialApp(
    title: 'ToDo List',
    home: ToDoList(
      todos: List<ToDo>.generate(
        20,
        (i) => ToDo(
              'Todo $i',
              'A description of what needs to be done for Todo $i'
        ),
      )
    ),
  ));
}

class ToDoList extends StatelessWidget {
  final List<ToDo> todos; 

  ToDoList({Key key, @required this.todos}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ToDo List'),
      ),
      body: ListView.builder(
        itemCount: todos.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(todos[index].title),
            onTap: () {
              final materialPageRoute = MaterialPageRoute(
                builder: (context) => DetailScreen(todo: todos[index])
              );
              Navigator.of(context).push(materialPageRoute);
            },
          );
        },
      ),
    );
  }
}