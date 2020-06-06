import 'package:flutter/material.dart';

import './descScreen.dart';

class TodoScreen extends StatelessWidget {
//   final todo;

//   TodoScreen(this.todo);

  @override
  Widget build(BuildContext context) {
    final Map<String, String> todo = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(todo['title']),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(
            top: 10,
            right: 10,
            left: 10,
            bottom: 5,
          ),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                DescScreen(todo['command1'], todo['desc1']),
                SizedBox(height: 10),
                DescScreen(todo['command2'], todo['desc2']),
                DescScreen(todo['command3'], todo['desc3']),
                DescScreen(todo['command4'], todo['desc4']),
                DescScreen(todo['command5'], todo['desc5']),
              ]),
        ),
      ),
    );
  }
}
