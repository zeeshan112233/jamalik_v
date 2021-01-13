import 'package:flutter/material.dart';
import 'package:jamalik/widgets/header_pink.dart';
import 'package:jamalik/widgets/Card.dart';

//New Class
class Checkout extends StatelessWidget {
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
                  text: "Checkout",
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Text(
                  "SELECT PAYMENT METHOD",
                  style: TextStyle(
                    color: const Color(0xFFA63496),
                    fontFamily: "DM Sans",
                    fontSize: 14.0,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: PayViaDebitCard(),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: PayViaCreditCard(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
