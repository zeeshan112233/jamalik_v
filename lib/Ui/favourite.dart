import 'package:flutter/material.dart';

//New Class
class favourite extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Material(
      color: Colors.orange,
      child: Column(
        children: [
          new Text(
            "Welcome to favourites",
            style: new TextStyle(fontSize: 50, fontWeight: FontWeight.w900),
          ),
        ],
      ),
    );
  }
}
