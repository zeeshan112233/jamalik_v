import 'package:flutter/material.dart';
import 'package:jamalik/widgets/header_pink.dart';
import 'package:jamalik/widgets/Paradisebeautysalonwidget.dart';

//New Class
class ParadiseBeautySalon extends StatefulWidget {
  @override
  _ParadiseBeautySalonState createState() => _ParadiseBeautySalonState();
}

class _ParadiseBeautySalonState extends State<ParadiseBeautySalon> {
  bool services = true;
  bool about = false;
  bool location = false;
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                child: header_pink(
                  Back: "images/back.png",
                  text: "Paradise Beauty Salon",
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.03),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xFFF1E4E8),
                  ),
                  child: Image(
                    image: AssetImage("images/logoparadise.png"),
                  ),
                ),
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
                          services = true;
                          about = false;
                          location = false;
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
                            gradient: services
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
                            "Services",
                            style: services
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
                          services = false;
                          about = true;
                          location = false;
                        })
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color(0xff982877),
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                                50.0), //                 <--- border radius here
                          ),
                        ),
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              vertical: 5, horizontal: 20.0),
                          decoration: ShapeDecoration(
                            shape: StadiumBorder(),
                            gradient: about
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
                            "About",
                            style: about
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
                          services = false;
                          about = false;
                          location = true;
                        })
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color(0xff982877),
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                                50.0), //                 <--- border radius here
                          ),
                        ),
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              vertical: 5, horizontal: 20.0),
                          decoration: ShapeDecoration(
                            shape: StadiumBorder(),
                            gradient: location
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
                            "Location",
                            style: location
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
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return ParadiseBeauty();
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
