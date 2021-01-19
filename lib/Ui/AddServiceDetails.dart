import 'package:flutter/material.dart';

import 'package:jamalik/widgets/header_pink.dart';
class AddServiceDetals extends StatefulWidget {
  @override
  _AddServiceDetalsState createState() => _AddServiceDetalsState();
}

class _AddServiceDetalsState extends State<AddServiceDetals> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
              Container(
                width: MediaQuery.of(context).size.width,
                child: header_pink(
                  Back: "images/back.png",
                  text: "Dashboard",
                ),
              ),
              ]

        ),
      ),
    );
  }
}