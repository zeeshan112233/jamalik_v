import 'dart:ui';

import 'package:flutter/material.dart';

class dotcard extends StatelessWidget {
  dotcard({
    this.text,
    this.customimage,
  });

  final String text;
  final String customimage;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.only(left: 25, top: 30, right: 25, bottom: 0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10)),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22.0, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  text,
                  style: TextStyle(fontSize: 15),
                ),
                new Image.asset(
                  customimage,
                  width: 50,
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 50,
          left: 10,
          child: Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
              color: Colors.blue.shade400,
              borderRadius: BorderRadius.circular(90),
            ),
          ),
        )
      ],
    );
  }
}
