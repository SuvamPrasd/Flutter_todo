import 'package:flutter/material.dart';

class DescScreen extends StatelessWidget {
  final String command;
  final String desc;

  DescScreen(this.command, this.desc);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              color: Colors.black54,
              child: Text(
                command,
                style: TextStyle(
                  fontFamily: 'SourceCodePro',
                  fontSize: 20,
                  wordSpacing: 10,
                ),
              ),
            ),
            const Divider(
              height: 30,
            ),
            Text(
              desc,
              style: TextStyle(
                fontFamily: 'Poppins',
                color: Colors.black38,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
