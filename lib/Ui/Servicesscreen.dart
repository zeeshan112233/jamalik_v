import 'package:flutter/material.dart';
import 'package:jamalik/widgets/dotcard.dart';
import 'package:jamalik/widgets/header_pink.dart';
import 'package:jamalik/widgets/header_white.dart';
import 'package:jamalik/widgets/TF.dart';

class Servicesscreen extends StatefulWidget {
  @override
  ServicescreenState createState() => ServicescreenState();
}

class ServicescreenState extends State<Servicesscreen> {
  String text = "Hair Cut";
  String image = "images/makeup.png";
  var services = [
    {'text': "Hair Cut", 'customimage': "images/makeup.png"},
    {'text': "Hair Color", 'customimage': "images/makeup.png"},
    {'text': "Styling", 'customimage': "images/makeup.png"},
    {'text': "Hair Extension", 'customimage': "images/makeup.png"},
    {'text': "Hair Treatment", 'customimage': "images/makeup.png"},
  ];

  bool Hairdressingserivices = true;
  bool cosmetology = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Column(
            children: [
              header_pink(
                Back: "images/back.png",
                text: "Services",
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Container(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        FlatButton(
                          padding: EdgeInsets.symmetric(
                              vertical: 5.0, horizontal: 1),
                          onPressed: () => {
                            setState(() {
                              Hairdressingserivices = true;
                              cosmetology = false;
                            })
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: const Color(0xff982877),
                              ),
                              borderRadius: BorderRadius.all(Radius.circular(
                                      50.0) //                 <--- border radius here
                                  ),
                            ),
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 8, horizontal: 30.0),
                              decoration: ShapeDecoration(
                                shape: StadiumBorder(),
                                gradient: Hairdressingserivices
                                    ? LinearGradient(
                                        colors: [
                                          Colors.purple.shade500,
                                          Colors.pink.shade200,
                                        ],
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                      )
                                    : LinearGradient(
                                        colors: [
                                          Colors.white,
                                          Colors.white,
                                        ],
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                      ),
                              ),
                              child: Row(
                                children: [
                                  Hairdressingserivices
                                      ? Image.asset("images/beautybtnwhite.png")
                                      : Image.asset("images/beautybtnpink.png"),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.05,
                                  ),
                                  Text(
                                    "Hairdressing Services",
                                    style: Hairdressingserivices
                                        ? TextStyle(
                                            color: Colors.white,
                                            fontFamily: "DM Sans",
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.w400)
                                        : TextStyle(
                                            color: Colors.black,
                                            fontFamily: "DM Sans",
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.w400,
                                          ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        //.......................................Button2..................................................
                        FlatButton(
                          padding: EdgeInsets.symmetric(
                              vertical: 5.0, horizontal: 1),
                          onPressed: () => {
                            setState(() {
                              Hairdressingserivices = false;
                              cosmetology = true;
                            })
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: const Color(0xff982877),
                              ),
                              borderRadius: BorderRadius.all(Radius.circular(
                                      50.0) //                 <--- border radius here
                                  ),
                            ),
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 8, horizontal: 30.0),
                              decoration: ShapeDecoration(
                                shape: StadiumBorder(),
                                gradient: cosmetology
                                    ? LinearGradient(
                                        colors: [
                                          Colors.purple.shade500,
                                          Colors.pink.shade200,
                                        ],
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                      )
                                    : LinearGradient(
                                        colors: [
                                          Colors.white,
                                          Colors.white,
                                        ],
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                      ),
                              ),
                              child: Row(
                                children: [
                                  cosmetology
                                      ? Image.asset("images/healthbtnwhite.png")
                                      : Image.asset("images/healthbtnpink.png"),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.05,
                                  ),
                                  Text(
                                    "cosmetology Services",
                                    style: cosmetology
                                        ? TextStyle(
                                            color: Colors.white,
                                            fontFamily: "DM Sans",
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.w400)
                                        : TextStyle(
                                            color: Colors.black,
                                            fontFamily: "DM Sans",
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.w400,
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
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Expanded(
                child: Container(
                  child: ListView.builder(
                      itemCount: services.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 5.0, horizontal: 18),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10)),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.2),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ],
                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal:
                                        MediaQuery.of(context).size.width *
                                            0.04,
                                    vertical:
                                        MediaQuery.of(context).size.height *
                                            0.01,
                                  ),
                                  child: Image.asset(
                                    services[index]['customimage'],
                                  ),
                                ),
                                SizedBox(
                                  width: 40,
                                ),
                                Text(
                                  services[index]['text'],
                                  style: TextStyle(fontSize: 25),
                                ),
                              ],
                            ),
                          ),
                        );
                      }),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
