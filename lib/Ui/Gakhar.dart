import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:intl_phone_field/countries.dart';
import 'package:jamalik/widgets/TF.dart';
import 'package:jamalik/widgets/companycard.dart';
import 'package:jamalik/widgets/dotcard.dart';
import 'package:jamalik/widgets/header_pink.dart';
import 'package:jamalik/widgets/header_white.dart';
import 'package:jamalik/widgets/NavDrawer.dart';

//New Class
class Gakhar extends StatefulWidget {
  @override
  _GakharState createState() => _GakharState();
}

class _GakharState extends State<Gakhar> {
  TextEditingController _emailController;
  TextEditingController _passwordController;

  void iniState() {
    super.initState();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(
        dp: "images/logo.png",
        name: "Ifraham :p",
      ),
      appBar: AppBar(
        title: Text("Gakhar"),
      ),
      body: Container(
        child: Column(
          children: [
            TF(
              controller: _emailController,
              hintText: 'Email',
              prefixIcon: Icons.no_cell,
              tfColor: Colors.grey.shade300,
            ),
            TF(
              controller: _passwordController,
              hintText: 'Password',
              isPassword: true,
              prefixIcon: Icons.lock,
              tfColor: Colors.grey.shade300,
            ),
            country_TF(),
            dotcard(
              text: "zaibi",
              customimage: "images/kainchi.png",
            ),
            header_white(
              prefixIcon: "images/prefix.png",
              suffixIcon: "images/suffix.png",
            ),
            header_pink(
              Back: "images/back.png",
              text: "Services",
            ),
            companycard(
              companylogo: "images/logo.png",
              category: "Shahzaib",
              companycategory: "Khan",
              companyname: "GAKHAR",
              starimage: "images/star.png",
              ratings: "(302)",
            )
          ],
        ),
      ),
    );
  }
}
