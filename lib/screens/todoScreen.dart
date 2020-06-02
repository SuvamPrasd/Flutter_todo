import 'package:flutter/material.dart';

class TodoScreen extends StatelessWidget {
//   final todo;

//   TodoScreen(this.todo);

  @override
  Widget build(BuildContext context) {
    final Map<String, String> todo = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text(todo['title']),
      ),
      body: Center(
        child: Text(todo['title']),
      ),
    );
  }
}
