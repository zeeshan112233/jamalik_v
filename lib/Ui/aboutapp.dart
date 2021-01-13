import 'package:flutter/material.dart';
import 'package:jamalik/widgets/header_pink.dart';

//New Class
class aboutapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                child: header_pink(
                  Back: "images/back.png",
                  text: "About App",
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    vertical: MediaQuery.of(context).size.height * 0.06,
                    horizontal: MediaQuery.of(context).size.width * 0.10),
                child: Container(
                  child: Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis maximus feugiat leo. Duis nec vestibulum tortor. Curabitur non felis sit amet risus feugiat sollicitudin in quis orci. Nam id est lectus. Nunc pellentesque vel risus ultrices posuere. Aenean dui urna, finibus ut augue a, euismod consequat erat. Nulla facilisi. Aliquam a erat purus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur eu arcu eu urna rhoncus lacinia id nec mauris. Donec dictum vehicula egestas. Proin molestie tempor augue, sit amet pharetra dui dapibus in.",
                    style: TextStyle(
                        height: 1.5,
                        color: const Color(0xFF9B318B),
                        fontFamily: "DM Sans",
                        fontSize: 14.0,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
