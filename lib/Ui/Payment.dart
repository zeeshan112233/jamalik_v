import 'package:flutter/material.dart';
import 'package:jamalik/widgets/header_pink.dart';
import 'package:jamalik/widgets/PaymentWidget.dart';
import 'package:jamalik/widgets/ButtonsWidget.dart';

//New Class
class Payment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                child: header_pink(
                  Back: "images/back.png",
                  text: "Payment",
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              PaymentDetails(),
              Expanded(child: SizedBox()),
              BookNow(),
            ],
          ),
        ),
      ),
    );
  }
}
