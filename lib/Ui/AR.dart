import 'package:flutter/material.dart';
import 'package:jamalik/widgets/ButtonsWidget.dart';
import 'package:jamalik/widgets/PincodeField.dart';
import 'package:jamalik/widgets/Serviceswidget.dart';
import 'package:jamalik/widgets/Paradisebeautysalonwidget.dart';

//New Class
class AR extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.yellow,
        appBar: AppBar(
          title: Center(
            child: Text("AR Buttons"),
          ),
          backgroundColor: Colors.green,
        ),
        body: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: 30.0,
              ),
              CreateAccount(),
              SizedBox(
                height: 10.0,
              ),
              //Sign in Button
              SignIn(),
              SizedBox(
                height: 5.0,
              ),
              PincodeField(),
              SizedBox(
                height: 5.0,
              ),
              Services(),

              SizedBox(
                height: 80.0,
              ),
              //Schedule Button
              Schedule(),
            ],
          ),
        ),
      ),
    );
  }
}
