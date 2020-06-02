import 'package:flutter/material.dart';

import './models/todo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Todo',
      home: Todo(),
    );
  }
}

class Todo extends StatefulWidget {
  @override
  _TodoState createState() => _TodoState();
}

class _TodoState extends State<Todo> {
  final todo = List.generate(
    20,
    (index) => TodoList('Todo $index',
        'A description of what needs to be done for Todo $index'),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todo'),
      ),
      body: Center(
        child: Text('Morning'),
      ),
    );
  }
}
