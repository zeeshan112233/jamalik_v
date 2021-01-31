import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:jamalik/APIs/signupApi.dart';
import 'package:jamalik/Buttons.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:jamalik/Ui/Payment.dart';
import 'package:jamalik/Ui/login.dart';
import 'package:jamalik/redux/model/app_state.dart';
import 'package:jamalik/widgets/TF.dart';
import 'package:jamalik/widgets/ButtonsWidget.dart';

//New Class
class Profile extends StatefulWidget {
  @override
  ProfileState createState() => ProfileState();
}

class ProfileState extends State<Profile> {
  String gender = 'M';
  int radioValue = 0;
  bool rememberMe = false;
  bool valid = true;
  bool isloading = false;

  //confirmpassword textfield
  final TextEditingController _confirmpasswordcontroller =
      new TextEditingController();

  final TextEditingController _emailcontroller = new TextEditingController();
  double _finalresult = 0.0;
  //firstname textfield
  final TextEditingController _firstnamecontroller =
      new TextEditingController();

  String _formattedtext = "";
  //lastname textfield
  final TextEditingController _lastnamecontroller = new TextEditingController();

  //password textfield
  final TextEditingController _passwordcontroller = new TextEditingController();

  //phone no textfield
  final TextEditingController _phonenocontroller = new TextEditingController();

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

  void _onRememberMeChanged(bool newValue) => setState(() {
        rememberMe = newValue;

        if (rememberMe) {
          // TODO: Here goes your functionality that remembers the user.
        } else {
          // TODO: Forget the user
        }
      });

  @override
  Widget build(BuildContext context) {
    //print(_usercontroller);
    final screenheight =
        MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;
    final screenwidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Material(
        child: Stack(
          children: [
            Container(
              height: screenheight,
              width: screenwidth,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.purple[600],
                    Colors.pink[200],
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
            Positioned(
              top: 170,
              child: Container(
                height: screenheight - 170,
                width: screenwidth,
                color: Colors.white,
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: new BorderRadius.only(
                        topLeft: const Radius.circular(50.0),
                        topRight: const Radius.circular(50.0),
                        // bottomLeft: const Radius.circular(10.0),
                        // bottomRight: const Radius.circular(10.0),
                      ),
                      color: Colors.white,
                    ),
                    child: StoreConnector<Appstate, Appstate>(
                        converter: (store) => store.state,
                        builder: (context, state) {
                          return Column(
                            children: [
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.10,
                              ),
                              Text(
                                "Profile Screen",
                                style: TextStyle(fontSize: 24),
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.01,
                              ),
                              Text(
                                "View and Edit you Profile !",
                                style: TextStyle(
                                  color: Color(0xff989BAD),
                                ),
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.03,
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 18.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left:
                                            MediaQuery.of(context).size.width *
                                                0.04,
                                      ),
                                      child: Text("First Name"),
                                    ),
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.02,
                                    ),
                                    TF(
                                      controller: _firstnamecontroller,
                                      hintText: state.user.firstName,
                                      // isPassword: true,
                                      prefixIcon: Icons.person_outline,
                                      suffixIcon:
                                          _firstnamecontroller.text.isNotEmpty
                                              ? Icons.check_circle
                                              : null,
                                      tfColor: Colors.grey.shade300,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left:
                                            MediaQuery.of(context).size.width *
                                                0.04,
                                      ),
                                      child: Text("Last Name"),
                                    ),
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.02,
                                    ),
                                    TF(
                                      controller: _lastnamecontroller,
                                      hintText: state.user.lastName,
                                      // isPassword: true,
                                      prefixIcon: Icons.person_outline,
                                      suffixIcon:
                                          _lastnamecontroller.text.isNotEmpty
                                              ? Icons.check_circle
                                              : null,
                                      tfColor: Colors.grey.shade300,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left:
                                            MediaQuery.of(context).size.width *
                                                0.04,
                                      ),
                                      child: Text("Phone Number"),
                                    ),
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.02,
                                    ),
                                    TF(
                                      controller: _phonenocontroller,
                                      hintText: state.user.mobile,
                                      // isPassword: true,
                                      isnumber: true,
                                      prefixIcon: Icons.phone_android,
                                      suffixIcon:
                                          _phonenocontroller.text.length == 8
                                              ? Icons.check_circle
                                              : null,
                                      tfColor: Colors.grey.shade300,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left:
                                            MediaQuery.of(context).size.width *
                                                0.04,
                                      ),
                                      child: Text("Email"),
                                    ),
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.02,
                                    ),
                                    TF(
                                      controller: _emailcontroller,
                                      hintText: state.user.email,
                                      // isPassword: true,
                                      isnumber: false,
                                      prefixIcon: Icons.mail,
                                      suffixIcon:
                                          _emailcontroller.text.length == 8
                                              ? Icons.check_circle
                                              : null,
                                      tfColor: Colors.grey.shade300,
                                    ),
                                    new Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        new Radio<int>(
                                            activeColor: Colors.purple.shade400,
                                            value: 0,
                                            groupValue: radioValue,
                                            onChanged: handleRadioValueChanged),
                                        new Text(
                                          "Male",
                                          style: new TextStyle(
                                              color: Colors.black),
                                        ),
                                        new Radio<int>(
                                            activeColor: Colors.purple.shade400,
                                            value: 1,
                                            groupValue: radioValue,
                                            onChanged: handleRadioValueChanged),
                                        new Text(
                                          "Female",
                                          style: new TextStyle(
                                              color: Colors.black),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left:
                                            MediaQuery.of(context).size.width *
                                                0.04,
                                      ),
                                      child: Text(" Password"),
                                    ),
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.02,
                                    ),
                                    TF(
                                      controller: _passwordcontroller,
                                      hintText: state.user.password,
                                      isPassword: true,
                                      prefixIcon: Icons.phone_android,
                                      suffixIcon:
                                          _passwordcontroller.text.length >= 8
                                              ? Icons.check_circle
                                              : null,
                                      tfColor: Colors.grey.shade300,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left:
                                            MediaQuery.of(context).size.width *
                                                0.04,
                                      ),
                                      child: Text(" Confirm Password"),
                                    ),
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.02,
                                    ),
                                    TF(
                                      controller: _confirmpasswordcontroller,
                                      hintText: state.user.password,
                                      isPassword: true,
                                      prefixIcon: Icons.phone_android,
                                      suffixIcon: (_passwordcontroller.text ==
                                                  _confirmpasswordcontroller
                                                      .text) &&
                                              (_passwordcontroller
                                                  .text.isNotEmpty)
                                          ? Icons.check_circle
                                          : null,
                                      tfColor: Colors.grey.shade300,
                                    ),
                                    // Row(
                                    //   children: [
                                    //     Checkbox(
                                    //         activeColor: Colors.pink.shade600,
                                    //         value: rememberMe,
                                    //         onChanged: _onRememberMeChanged),
                                    //     Text(
                                    //       "Agree with Our Privacy Policy & ",
                                    //       style: TextStyle(
                                    //         color: Color(0xff989BAD),
                                    //         fontSize: MediaQuery.of(context)
                                    //                 .size
                                    //                 .width *
                                    //             0.03,
                                    //       ),
                                    //     ),
                                    //     GestureDetector(
                                    //         child: Text(
                                    //           "Terms & Condition",
                                    //           style: TextStyle(
                                    //             color: Colors.pink.shade600,
                                    //             fontSize: MediaQuery.of(context)
                                    //                     .size
                                    //                     .width *
                                    //                 0.03,
                                    //           ),
                                    //         ),
                                    //         onTap: () =>
                                    //             print("Terms and Condition")),
                                    //   ],
                                    // ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.02,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  // Text(" Already have an Account? "),
                                  // GestureDetector(
                                  //   child: Text(
                                  //     "Sign in!",
                                  //     style: TextStyle(
                                  //         color: Colors.pink.shade600,
                                  //         fontSize: 20),
                                  //   ),
                                  //   onTap: () => print("Signin touched"),
                                  // ),
                                ],
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.02,
                              ),
                              !isloading
                                  ? PinkButtons(
                                      TextColor: Colors.white,
                                      Buttontext: "Edit Data ",
                                      onpress: () => {
                                        if (_firstnamecontroller.text.isEmpty)
                                          {
                                            Fluttertoast.showToast(
                                                msg:
                                                    "First name cannot be Empty",
                                                toastLength: Toast.LENGTH_SHORT,
                                                gravity: ToastGravity.CENTER,
                                                timeInSecForIosWeb: 1,
                                                backgroundColor: Colors.red,
                                                textColor: Colors.white,
                                                fontSize: 16.0),
                                          }
                                        else if (_lastnamecontroller
                                            .text.isEmpty)
                                          {
                                            Fluttertoast.showToast(
                                                msg:
                                                    "Last name cannot be Empty",
                                                toastLength: Toast.LENGTH_SHORT,
                                                gravity: ToastGravity.CENTER,
                                                timeInSecForIosWeb: 1,
                                                backgroundColor: Colors.red,
                                                textColor: Colors.white,
                                                fontSize: 16.0),
                                          }
                                        else if (_phonenocontroller
                                                .text.length <=
                                            8)
                                          {
                                            Fluttertoast.showToast(
                                                msg:
                                                    "Please Enter valid Phone number",
                                                toastLength: Toast.LENGTH_SHORT,
                                                gravity: ToastGravity.CENTER,
                                                timeInSecForIosWeb: 1,
                                                backgroundColor: Colors.red,
                                                textColor: Colors.white,
                                                fontSize: 16.0),
                                          }
                                        else if (_passwordcontroller
                                                .text.length <
                                            8)
                                          {
                                            Fluttertoast.showToast(
                                                msg:
                                                    "Password must be greater then 8",
                                                toastLength: Toast.LENGTH_SHORT,
                                                gravity: ToastGravity.CENTER,
                                                timeInSecForIosWeb: 1,
                                                backgroundColor: Colors.red,
                                                textColor: Colors.white,
                                                fontSize: 16.0),
                                          }
                                        else if (_passwordcontroller.text !=
                                            _confirmpasswordcontroller.text)
                                          {
                                            Fluttertoast.showToast(
                                                msg: "Passwords donot Match",
                                                toastLength: Toast.LENGTH_SHORT,
                                                gravity: ToastGravity.CENTER,
                                                timeInSecForIosWeb: 1,
                                                backgroundColor: Colors.red,
                                                textColor: Colors.white,
                                                fontSize: 16.0),
                                          }
                                        else if (_passwordcontroller.text !=
                                            _confirmpasswordcontroller.text)
                                          {
                                            Fluttertoast.showToast(
                                                msg: "Passwords donot Match",
                                                toastLength: Toast.LENGTH_SHORT,
                                                gravity: ToastGravity.CENTER,
                                                timeInSecForIosWeb: 1,
                                                backgroundColor: Colors.red,
                                                textColor: Colors.white,
                                                fontSize: 16.0),
                                          }
                                        else
                                          {},
                                      },
                                    )
                                  : Container(
                                      child: Center(
                                        child: CircularProgressIndicator(),
                                      ),
                                    ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.07,
                              ),
                            ],
                          );
                        }),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 110,
              left: screenwidth - 240,
              child: Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: new BorderRadius.only(
                    topLeft: const Radius.circular(90.0),
                    topRight: const Radius.circular(90.0),
                    bottomLeft: const Radius.circular(90.0),
                    bottomRight: const Radius.circular(90.0),
                  ),
                  color: Colors.white,
                ),
                child: Image.asset('images/Passwordimage.png'),
              ),
            ),
            Positioned(
              top: 0.0,
              right: 0.0,
              child: Container(
                height: 150,
                width: 150,
                child: Image.asset('images/signinlogo.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
