import 'package:flutter/material.dart';
import 'package:jamalik/Buttons.dart';
import 'package:jamalik/Ui/Payment.dart';
import 'package:jamalik/Ui/login.dart';
import 'package:jamalik/widgets/TF.dart';
import 'package:jamalik/widgets/ButtonsWidget.dart';

//New Class
class GettingStarted extends StatefulWidget {
  @override
  GettingStartedState createState() => GettingStartedState();
}

class GettingStartedState extends State<GettingStarted> {
  bool valid = false;
  int radioValue = 0;
  double _finalresult = 0.0;
  String _formattedtext = "";
//method for radio button
  void handleRadioValueChanged(int value) {
    setState(() {
      radioValue = value;
      switch (radioValue) {
        case 0:

        case 1:
      }
    });
  }

  //method for check box
  bool rememberMe = false;

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
                    child: Column(
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.10,
                        ),
                        Text(
                          "Getting Started",
                          style: TextStyle(fontSize: 24),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.01,
                        ),
                        Text(
                          "Create an Account to to continue!",
                          style: TextStyle(
                            color: Color(0xff989BAD),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.03,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 18.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  left:
                                      MediaQuery.of(context).size.width * 0.04,
                                ),
                                child: Text("Full Name"),
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.02,
                              ),
                              TF(
                                controller: null,
                                hintText: 'Aish',
                                // isPassword: true,
                                prefixIcon: Icons.person_outline,
                                suffixIcon: valid ? Icons.check_box : null,
                                tfColor: Colors.grey.shade300,
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left:
                                      MediaQuery.of(context).size.width * 0.04,
                                ),
                                child: Text("Last Name"),
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.02,
                              ),
                              TF(
                                controller: null,
                                hintText: '**********',
                                // isPassword: true,
                                prefixIcon: Icons.person_outline,
                                suffixIcon: valid ? Icons.check_box : null,
                                tfColor: Colors.grey.shade300,
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left:
                                      MediaQuery.of(context).size.width * 0.04,
                                ),
                                child: Text("Phone Number"),
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.02,
                              ),
                              TF(
                                controller: null,
                                hintText: '(+974) 555 555 555',
                                // isPassword: true,
                                prefixIcon: Icons.phone_android,
                                suffixIcon: valid ? Icons.check_box : null,
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
                                padding: EdgeInsets.only(
                                  left:
                                      MediaQuery.of(context).size.width * 0.04,
                                ),
                                child: Text(" Password"),
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.02,
                              ),
                              TF(
                                controller: null,
                                hintText: '**********',
                                isPassword: true,
                                prefixIcon: Icons.phone_android,
                                suffixIcon: valid ? Icons.check_box : null,
                                tfColor: Colors.grey.shade300,
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left:
                                      MediaQuery.of(context).size.width * 0.04,
                                ),
                                child: Text(" Confirm Password"),
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.02,
                              ),
                              TF(
                                controller: null,
                                hintText: '**********',
                                isPassword: true,
                                prefixIcon: Icons.phone_android,
                                suffixIcon: valid ? Icons.check_box : null,
                                tfColor: Colors.grey.shade300,
                              ),
                              Row(
                                children: [
                                  Checkbox(
                                      activeColor: Colors.pink.shade600,
                                      value: rememberMe,
                                      onChanged: _onRememberMeChanged),
                                  Text(
                                    "Agree with Our Privacy Policy & ",
                                    style: TextStyle(
                                      color: Color(0xff989BAD),
                                      fontSize:
                                          MediaQuery.of(context).size.width *
                                              0.03,
                                    ),
                                  ),
                                  GestureDetector(
                                      child: Text(
                                        "Terms & Condition",
                                        style: TextStyle(
                                          color: Colors.pink.shade600,
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.03,
                                        ),
                                      ),
                                      onTap: () =>
                                          print("Terms and Condition")),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(" Already have an Account? "),
                            GestureDetector(
                              child: Text(
                                "Sign in!",
                                style: TextStyle(
                                    color: Colors.pink.shade600, fontSize: 20),
                              ),
                              onTap: () => print("Signin touched"),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                        PinkButtons(
                          TextColor: Colors.white,
                          Buttontext: "SIGN UP",
                          onpress: () => {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => login()),
                            )
                          },
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.07,
                        ),
                      ],
                    ),
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
