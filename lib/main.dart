import 'package:flutter/material.dart';

import './models/todo.dart';
import './screens/todoScreen.dart';
import './models/gitCommands.dart';

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
        body: ListView.builder(
          itemBuilder: (ctx, index) {
            return ListTile(
              title: Text(gitCommand[index]['title']),
              trailing: Icon(Icons.verified_user),
              onTap: () {
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //         builder: (ctx) => TodoScreen(todo[index])));
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (ctx) => TodoScreen(),
                        settings: RouteSettings(
                          arguments: gitCommand[index],
                        )));
              },
            );
          },
          itemCount: gitCommand.length,
        ));
  }
}
