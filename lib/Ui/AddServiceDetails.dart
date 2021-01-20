import 'package:flutter/material.dart';

import 'package:jamalik/widgets/header_pink.dart';
import 'package:jamalik/widgets/TF.dart';

class AddServiceDetails extends StatefulWidget {
  @override
  _AddServiceDetailsState createState() => _AddServiceDetailsState();
}

class _AddServiceDetailsState extends State<AddServiceDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            header_pink(
              Back: "images/back.png",
              text: "Add Services",
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: Container(
                // for scroll view

                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              spreadRadius: 4,
                              blurRadius: 7,
                              offset:
                                  Offset(0, 2), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              TF(
                                hintText: "Title",
                                prefixIcon: Icons.assignment_turned_in_outlined,
                                suffixIcon: Icons.assignment_turned_in_outlined,
                                borderColor: Colors.pink[100],
                                tfColor: Colors.white,
                              ),
                              TF(
                                hintText: "Phone Number",
                                isnumber: true,
                                prefixIcon: Icons.phone_android,
                                suffixIcon: Icons.assignment_turned_in_outlined,
                                borderColor: Colors.pink[100],
                                tfColor: Colors.white,
                              ),
                              TF(
                                hintText: "Viber (Optional)",
                                isnumber: true,
                                prefixIcon: Icons.phone_android,
                                suffixIcon: Icons.assignment_turned_in_outlined,
                                borderColor: Colors.pink[100],
                                tfColor: Colors.white,
                              ),
                              TF(
                                hintText: "Whatsapp (Optional)",
                                isnumber: true,
                                prefixIcon: Icons.phone_android,
                                suffixIcon: Icons.assignment_turned_in_outlined,
                                borderColor: Colors.pink[100],
                                tfColor: Colors.white,
                              ),
                              TF(
                                //controller: _emailcontroller,
                                hintText: 'email',
                                // isPassword: true,
                                isnumber: false,
                                prefixIcon: Icons.mail,
                                // suffixIcon: _emailcontroller.text.isNotEmpty
                                //     ? Icons.check_circle
                                //     : null,
                                tfColor: Colors.white,
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              spreadRadius: 4,
                              blurRadius: 7,
                              offset:
                                  Offset(0, 2), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "General",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                child: Text(
                                  "General is to a so that is not a das llowed  dsa f sfd fd gfg gf dfg ",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                      color: Colors.grey[800]),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
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
