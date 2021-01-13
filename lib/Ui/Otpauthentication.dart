import 'package:flutter/material.dart';
import 'package:jamalik/widgets/TF.dart';
import 'package:jamalik/widgets/ButtonsWidget.dart';
import 'package:pin_code_text_field/pin_code_text_field.dart';

import '../Buttons.dart';
import 'Passwordrecovery.dart';

//New Class
class Otpauthentication extends StatefulWidget {
  @override
  OtpauthenticationState createState() => OtpauthenticationState();
}

class OtpauthenticationState extends State<Otpauthentication> {
  String phoneno = "+974 555 555 555 ";
  bool passwordvalid = false;
  @override
  Widget build(BuildContext context) {
    final screenheight =
        MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;
    final screenwidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Material(
        child: SizedBox(
          child: Stack(
            children: [
              Container(
                height: screenheight * 0.7,
                width: screenwidth,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.purple[500],
                      Colors.amber[500],
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
                          Text("OTP Authentication ",
                              style: TextStyle(fontSize: 24)),
                          SizedBox(height: 5),
                          Text(
                            "An authentication code has been sent to",
                            style: TextStyle(
                              color: Color(0xff989BAD),
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            phoneno,
                            style: TextStyle(
                              color: Color(0xff989BAD),
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.06,
                          ),
                          PinCodeTextField(),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.02,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(" I didn't recieve code ! "),
                              GestureDetector(
                                child: Text(
                                  "Resend!",
                                  style: TextStyle(
                                    color: Color(0xffA63786),
                                  ),
                                ),
                                onTap: () => print("Forgot touched"),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.12,
                          ),
                          PinkButtons(
                              Buttontext: "NEXT",
                              onpress: () => {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              Passwordrecovery()),
                                    )
                                  },
                              TextColor: Colors.white),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.02,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(
                                children: [
                                  Text(" By signing up you agree to our. "),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.012,
                                  ),
                                  GestureDetector(
                                    child: Text(
                                      "Terms and Conditions!",
                                      style: TextStyle(
                                        color: Color(0xffA63786),
                                      ),
                                    ),
                                    onTap: () => print("Forgot touched"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.05,
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
                  child: Image.asset('images/loginimage.png'),
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
      ),
    );
  }
}
