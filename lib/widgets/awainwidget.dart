import 'package:flutter/material.dart';

//New Class
class Gakhar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Material(
        color: Colors.yellow,
        child: Column(
          children: [
            new Text(
              "Welcome to GAKHAR",
              style: new TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.w900,
                ),
            ),
          ],
        ));
  }
}
