import 'package:flutter/material.dart';
import 'package:jamalik/widgets/header_pink.dart';

//New Class
class customersupport extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                child: header_pink(
                  Back: "images/back.png",
                  text: "Customer Support",
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40.0),
                child: Image.asset("images/Call.png"),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Text(
                  "+974 555 5556",
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: "DM Sans",
                    fontSize: 14.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 80.0),
                child: Image.asset("images/Message.png"),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Text(
                  "Message",
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: "DM Sans",
                    fontSize: 14.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 80.0),
                child: Image.asset("images/Email.png"),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Text(
                  "jamalic@gmail.com",
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: "DM Sans",
                    fontSize: 14.0,
                    fontWeight: FontWeight.w700,
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
