import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class PinkButtons extends StatelessWidget {
  PinkButtons({
    this.controller,
    this.Buttontext,
    this.TextColor,
    this.onpress,
  });

  final TextEditingController controller;
  final String Buttontext;

  final Color TextColor;

  Function onpress;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FlatButton(
        textColor: TextColor,
        padding: EdgeInsets.zero,
        shape: StadiumBorder(),
        onPressed: onpress,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 90.0),
          decoration: ShapeDecoration(
            shape: StadiumBorder(),
            gradient: LinearGradient(
              colors: [
                Colors.purple.shade500,
                Colors.pink.shade200,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Text(
            Buttontext,
            style: TextStyle(
              fontSize: 16.0,
            ),
          ),
        ),
      ),
    );
  }
}

class WhiteButtons extends StatelessWidget {
  WhiteButtons({
    this.controller,
    this.Buttontext,
    this.TextColor,
    this.onpress,
  });

  final TextEditingController controller;
  final String Buttontext;

  final Color TextColor;

  Function onpress;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FlatButton(
        textColor: TextColor,
        padding: EdgeInsets.zero,
        shape: StadiumBorder(),
        onPressed: onpress,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 90.0),
          decoration: ShapeDecoration(
            shape: StadiumBorder(),
            color: Colors.grey.shade300,
          ),
          child: Text(
            Buttontext,
            style: TextStyle(
              fontSize: 16.0,
            ),
          ),
        ),
      ),
    );
  }
}
