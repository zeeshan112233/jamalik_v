import 'package:flutter/material.dart';

//New Class
class logout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Material(
      color: Colors.black,
      child: Column(
        children: [
          new Text(
            "Welcome to LOG OUT",
            style: new TextStyle(
                fontSize: 50, fontWeight: FontWeight.w900, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
