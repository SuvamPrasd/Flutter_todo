import 'package:flutter/material.dart';

class DescScreen extends StatelessWidget {
  final String command;
  final String desc;

  DescScreen(this.command, this.desc);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(command),
            const Divider(
              height: 30,
            ),
            Text(desc),
          ],
        ),
      ),
    );
  }
}
