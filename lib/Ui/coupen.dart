import 'package:flutter/material.dart';

//New Class
class coupen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Material(
      color: Colors.green,
      child: Column(
        children: [
          new Text(
            "Welcome to Coupens",
            style: new TextStyle(fontSize: 50, fontWeight: FontWeight.w900),
          ),
        ],
      ),
    );
  }
}
