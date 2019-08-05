import 'package:flutter/material.dart';
import 'ToDo.dart';

class DetailScreen extends StatelessWidget {
  final ToDo todo;

  DetailScreen({Key key, @required this.todo});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail screen'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(todo.description),
      ),
    );
  }
}