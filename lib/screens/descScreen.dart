import 'package:flutter/material.dart';

class DescScreen extends StatelessWidget {
  final String command;
  final String desc;

  DescScreen(this.command, this.desc);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white60,
      elevation: 5,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 10,
            ),
            color: Colors.black87,
            child: Text(
              command,
              style: const TextStyle(
                fontFamily: 'SourceCodePro',
                fontSize: 20,
                wordSpacing: 10,
                color: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 10,
            ),
            child: Text(
              desc,
              style: const TextStyle(
                fontFamily: 'Poppins',
                color: Colors.black38,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
