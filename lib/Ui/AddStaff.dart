import 'package:flutter/material.dart';
import 'package:jamalik/Ui/AddServiceDetails.dart';

import 'package:jamalik/widgets/header_pink.dart';
import 'package:jamalik/widgets/TF.dart';

import '../Buttons.dart';

class AddStaff extends StatefulWidget {
  @override
  _AddServiceDetailsState createState() => _AddServiceDetailsState();
}

class _AddServiceDetailsState extends State<AddStaff> {

  String gender = 'M';
  int radioValue = 0;
 

   TextEditingController _emailcontroller = new TextEditingController();
  //firstname textfield
   TextEditingController _firstnamecontroller =
      new TextEditingController();

  //lastname textfield
   TextEditingController _lastnamecontroller = new TextEditingController();

  //password textfield

  //phone no textfield
  TextEditingController _phonenocontroller = new TextEditingController();

  // final TextEditingController _phonenocontroller = new TextEditingController();

//method for radio button
  void handleRadioValueChanged(int value) {
    setState(() {
      radioValue = value;
      switch (radioValue) {
        case 0:
          gender = "M";
          break;

        case 1:
          gender = "F";
          break;
      }
    });
  }

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            header_pink(
              Back: "images/back.png",
              text: "Add Staff",
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: Container(
                // for scroll view

                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(32.0),
                    child: Column(
                      children: [
       TF(
                                  controller: _firstnamecontroller,
                                  hintText: 'Staff First Name',
                                  // isPassword: true,
                                  prefixIcon: Icons.person_outline,
                                  suffixIcon: _firstnamecontroller.text.isNotEmpty
                                      ? Icons.check_circle
                                      : null,
                                  tfColor: Colors.grey.shade300,
                                ),
                               TF(
                                  controller: _lastnamecontroller,
                                  hintText: 'Staff Last Name',
                                  // isPassword: true,
                                  prefixIcon: Icons.person_outline,
                                  suffixIcon: _lastnamecontroller.text.isNotEmpty
                                      ? Icons.check_circle
                                      : null,
                                  tfColor: Colors.grey.shade300,
                                ),       TF(
                                  controller: _emailcontroller,
                                  hintText: 'Staff Email',
                                  // isPassword: true,
                                  prefixIcon: Icons.person_outline,
                                  suffixIcon: _emailcontroller.text.isNotEmpty
                                      ? Icons.check_circle
                                      : null,
                                  tfColor: Colors.grey.shade300,
                                ),       TF(
                                  controller: _phonenocontroller,
                                  hintText: 'Staff Mobile Number',
                                  // isPassword: true,
                                  prefixIcon: Icons.person_outline,
                                  suffixIcon: _phonenocontroller.text.isNotEmpty
                                      ? Icons.check_circle
                                      : null,
                                  tfColor: Colors.grey.shade300,
                                ),

                              new Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  new Radio<int>(
                                      activeColor: Colors.purple.shade400,
                                      value: 0,
                                      groupValue: radioValue,
                                      onChanged: handleRadioValueChanged),
                                  new Text(
                                    "Male",
                                    style: new TextStyle(color: Colors.black),
                                  ),
                                  new Radio<int>(
                                      activeColor: Colors.purple.shade400,
                                      value: 1,
                                      groupValue: radioValue,
                                      onChanged: handleRadioValueChanged),
                                  new Text(
                                    "Female",
                                    style: new TextStyle(color: Colors.black),
                                  ),
                                ],
                              ),


                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          PinkButtons(
                            Buttontext: "Add Staff",
                            TextColor: Colors.white,
                            onpress: () => {
 
                              
 Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => AddServiceDetails()),
                              ),
                              
                            },
                          ),
                        ],
                      ),
                    ),


                              ],
                            ),
                  ),
                        ),
                      ),
                      ),
          ],
        ),
      ),
    );
  }
}
