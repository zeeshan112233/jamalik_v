import 'package:flutter/material.dart';

//New Class
class language extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Material(
      color: Colors.teal,
      child: Column(
        children: [
          new Text(
            "Welcome to language",
            style: new TextStyle(fontSize: 50, fontWeight: FontWeight.w900),
          ),
        ],
      ),
    );
  }
}
