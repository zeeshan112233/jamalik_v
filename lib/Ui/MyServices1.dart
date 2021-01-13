import 'package:flutter/material.dart';
import 'package:jamalik/widgets/header_pink.dart';
import 'package:jamalik/widgets/Serviceswidget.dart';
import 'package:jamalik/widgets/ButtonsWidget.dart';

//New Class
class MyServices1 extends StatefulWidget {
  @override
  _MyServices1State createState() => _MyServices1State();
}

class _MyServices1State extends State<MyServices1> {
  bool myappointment = true;
  bool completedservice = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                child: header_pink(
                  Back: "images/back.png",
                  text: "My Services",
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    FlatButton(
                      padding:
                          EdgeInsets.symmetric(vertical: 5.0, horizontal: 1),
                      onPressed: () => {
                        setState(() {
                          myappointment = true;
                          completedservice = false;
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
                              vertical: 5, horizontal: 20.0),
                          decoration: ShapeDecoration(
                            shape: StadiumBorder(),
                            gradient: myappointment
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
                          child: Text(
                            "My Appointments",
                            style: myappointment
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
                        ),
                      ),
                    ),
                    FlatButton(
                      padding:
                          EdgeInsets.symmetric(vertical: 5.0, horizontal: 1),
                      onPressed: () => {
                        setState(() {
                          myappointment = false;
                          completedservice = true;
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
                              vertical: 5, horizontal: 20.0),
                          decoration: ShapeDecoration(
                            shape: StadiumBorder(),
                            gradient: completedservice
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
                          child: Text(
                            "Completed Services",
                            style: completedservice
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
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return Services();
                    }),
              )
              // Services()
            ],
          ),
        ),
      ),
    );
  }
}
