import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:jamalik/APIs/addStaffAPI.dart';
import 'package:jamalik/Ui/AddServiceDetails.dart';
import 'package:jamalik/Ui/staff.dart';
import 'package:jamalik/redux/model/app_state.dart';

import 'package:jamalik/widgets/header_pink.dart';
import 'package:jamalik/widgets/TF.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../Buttons.dart';

class AddStaff extends StatefulWidget {
  @override
  _AddServiceDetailsState createState() => _AddServiceDetailsState();
}

class _AddServiceDetailsState extends State<AddStaff> {
  String gender = 'M';
  int radioValue = 0;
  bool isloading = false;

  TextEditingController _emailcontroller = new TextEditingController();
  //firstname textfield
  TextEditingController _firstnamecontroller = new TextEditingController();

  //lastname textfield
  TextEditingController _lastnamecontroller = new TextEditingController();

  //phone no textfield
  TextEditingController _phonenocontroller = new TextEditingController();

  TextEditingController _detailscontroller = new TextEditingController();

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
        child: StoreConnector<Appstate, Appstate>(
            converter: (store) => store.state,
            builder: (context, state) {
              return Column(
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
                                prefixIcon: Icons.person_add,
                                suffixIcon: _lastnamecontroller.text.isNotEmpty
                                    ? Icons.check_circle
                                    : null,
                                tfColor: Colors.grey.shade300,
                              ),
                              TF(
                                controller: _emailcontroller,
                                hintText: 'Staff Email',
                                // isPassword: true,
                                prefixIcon: Icons.email,
                                suffixIcon: _emailcontroller.text.isNotEmpty
                                    ? Icons.check_circle
                                    : null,
                                tfColor: Colors.grey.shade300,
                              ),
                              TF(
                                controller: _phonenocontroller,
                                hintText: 'Staff Mobile Number',
                                // isPassword: true,
                                prefixIcon: Icons.phone,
                                suffixIcon: _phonenocontroller.text.isNotEmpty
                                    ? Icons.check_circle
                                    : null,
                                tfColor: Colors.grey.shade300,
                              ),
                              TF(
                                controller: _detailscontroller,
                                hintText: 'Staff Details',
                                prefixIcon: Icons.devices,
                                suffixIcon: _detailscontroller.text.isNotEmpty
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
                                    !isloading
                                        ? PinkButtons(
                                            TextColor: Colors.white,
                                            Buttontext: "ADD STAFF",
                                            onpress: () => {
                                              if (_firstnamecontroller
                                                  .text.isEmpty)
                                                {
                                                  Fluttertoast.showToast(
                                                      msg:
                                                          "First name cannot be Empty",
                                                      toastLength:
                                                          Toast.LENGTH_SHORT,
                                                      gravity:
                                                          ToastGravity.CENTER,
                                                      timeInSecForIosWeb: 1,
                                                      backgroundColor:
                                                          Colors.red,
                                                      textColor: Colors.white,
                                                      fontSize: 16.0),
                                                }
                                              else if (_lastnamecontroller
                                                  .text.isEmpty)
                                                {
                                                  Fluttertoast.showToast(
                                                      msg:
                                                          "Last name cannot be Empty",
                                                      toastLength:
                                                          Toast.LENGTH_SHORT,
                                                      gravity:
                                                          ToastGravity.CENTER,
                                                      timeInSecForIosWeb: 1,
                                                      backgroundColor:
                                                          Colors.red,
                                                      textColor: Colors.white,
                                                      fontSize: 16.0),
                                                }
                                              else if (_phonenocontroller
                                                  .text.isEmpty)
                                                {
                                                  Fluttertoast.showToast(
                                                      msg:
                                                          "Please Enter Phone number",
                                                      toastLength:
                                                          Toast.LENGTH_SHORT,
                                                      gravity:
                                                          ToastGravity.CENTER,
                                                      timeInSecForIosWeb: 1,
                                                      backgroundColor:
                                                          Colors.red,
                                                      textColor: Colors.white,
                                                      fontSize: 16.0),
                                                }
                                              else if (_detailscontroller
                                                  .text.isEmpty)
                                                {
                                                  Fluttertoast.showToast(
                                                      msg:
                                                          "Please Enter Staff Details",
                                                      toastLength:
                                                          Toast.LENGTH_SHORT,
                                                      gravity:
                                                          ToastGravity.CENTER,
                                                      timeInSecForIosWeb: 1,
                                                      backgroundColor:
                                                          Colors.red,
                                                      textColor: Colors.white,
                                                      fontSize: 16.0),
                                                }
                                              else
                                                {
                                                  setState(() {
                                                    isloading = true;
                                                  }),
                                                  Addstaff()
                                                      .addstaff(
                                                          firstName:
                                                              _firstnamecontroller
                                                                  .text,
                                                          lastName:
                                                              _lastnamecontroller
                                                                  .text,
                                                          email:
                                                              _emailcontroller
                                                                  .text,
                                                          gender: this.gender,
                                                          phonenumber:
                                                              _phonenocontroller
                                                                  .text,
                                                          description:
                                                              _detailscontroller
                                                                  .text,
                                                          providerid: state
                                                              .user.providerId
                                                              .toString())
                                                      .then((value) => {
                                                            if (value
                                                                    .firstName !=
                                                                null)
                                                              {
                                                                setState(() {
                                                                  isloading =
                                                                      false;
                                                                }),
                                                                print(value),
                                                                Fluttertoast.showToast(
                                                                    msg: 'Staff member with username :  ' +
                                                                        value
                                                                            .firstName
                                                                            .toString() +
                                                                        " added"),
                                                                Navigator.push(
                                                                  context,
                                                                  MaterialPageRoute(
                                                                      builder:
                                                                          (context) =>
                                                                              staffScreen(
                                                                                proiverid: state.user.providerId.toString(),
                                                                              )),
                                                                )
                                                              }
                                                            else
                                                              {
                                                                setState(() {
                                                                  isloading =
                                                                      false;
                                                                }),
                                                                Fluttertoast
                                                                    .showToast(
                                                                        msg:
                                                                            'Failed ')
                                                              },
                                                            print(value
                                                                .toString()),
                                                          })
                                                },
                                            },
                                          )
                                        : Container(
                                            child: Center(
                                              child:
                                                  CircularProgressIndicator(),
                                            ),
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
              );
            }),
      ),
    );
  }
}
