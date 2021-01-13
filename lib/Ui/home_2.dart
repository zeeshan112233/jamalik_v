import 'package:flutter/material.dart';
import 'package:jamalik/Ui/AR.dart';
import 'package:jamalik/Ui/notification.dart';
import 'package:jamalik/widgets/dotcard.dart';
import 'package:jamalik/widgets/header_white.dart';
import 'package:jamalik/widgets/TF.dart';
import 'package:jamalik/widgets/NavDrawer.dart';

class home_2 extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<home_2> {
  String name = "Aisha";
  bool Beauty = true;
  bool Health = false;
  bool other = false;

  var services = [
    {'text': "Hairdressing Services", 'customimage': "images/kainchi.png"},
    {'text': "Cosmetology", 'customimage': "images/cos.png"},
    {'text': "Body Care", 'customimage': "images/leg.png"},
    {'text': "Spa Procedures", 'customimage': "images/spa.png"},
    {'text': "Nail Polish", 'customimage': "images/nail.png"},
    {'text': "Tanning Studios", 'customimage': "images/tan.png"},
    {'text': "Make Up ", 'customimage': "images/make.png"},
  ];

  @override
  Widget build(BuildContext context) {
    final screenheight =
        MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;
    final screenwidth = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Scaffold(
          drawer: NavDrawer(
            dp: "images/logo.png",
            name: "Jamalik",
          ),
          appBar: AppBar(
              leading: Builder(
                builder: (BuildContext context) {
                  return IconButton(
                    icon: new Image.asset('images/menuu.png'),
                    onPressed: () {
                      Scaffold.of(context).openDrawer();
                    },
                    tooltip:
                        MaterialLocalizations.of(context).openAppDrawerTooltip,
                  );
                },
              ),
              backgroundColor: Colors.white,
              actions: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => notification()));
                  },
                  child: IconButton(
                    icon: new Image.asset('images/not.png'),
                  ),
                ),
                SizedBox(
                  width: 10,
                )
              ]),

          // drawer: NavDrawer(
          //   dp: "images/logo.png",
          //   name: "Ifraham :p",
          // ),
          body: Container(
            height: screenheight - kToolbarHeight,
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.02,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10,
                  ),

                  TF(
                    controller: null,
                    hintText: 'Rawalpindi',
                    prefixIcon: Icons.location_pin,
                    suffixIcon: Icons.search,
                    tfColor: Colors.grey.shade300,
                  ),
                  Text(
                    "Hey, $name",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  Text("Welcome to Jamalik"),
                  SizedBox(height: 5),
                  Center(
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.asset(
                          "images/home_2pic.png",
                          width: screenwidth,
                          height: screenheight * 0.25,
                          fit: BoxFit.fill,
                        )),
                  ),

                  //............................................button1..................................................
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 8.0, right: 8, top: 13),
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
                                  Beauty = true;
                                  Health = false;
                                  other = false;

                                  services = [
                                    {
                                      'text': "Hairdressing Services",
                                      'customimage': "images/kainchi.png"
                                    },
                                    {
                                      'text': "Cosmetology",
                                      'customimage': "images/cos.png"
                                    },
                                    {
                                      'text': "Body Care",
                                      'customimage': "images/leg.png"
                                    },
                                    {
                                      'text': "Spa Procedures",
                                      'customimage': "images/spa.png"
                                    },
                                    {
                                      'text': "Nail Polish",
                                      'customimage': "images/nail.png"
                                    },
                                    {
                                      'text': "Tanning Studios",
                                      'customimage': "images/tan.png"
                                    },
                                    {
                                      'text': "Make Up ",
                                      'customimage': "images/make.png"
                                    },
                                  ];
                                })
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: const Color(0xff982877),
                                  ),
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(
                                          50.0) //                 <--- border radius here
                                      ),
                                ),
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 8, horizontal: 30.0),
                                  decoration: ShapeDecoration(
                                    shape: StadiumBorder(),
                                    gradient: Beauty
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
                                      Beauty
                                          ? Image.asset(
                                              "images/beautybtnwhite.png")
                                          : Image.asset(
                                              "images/beautybtnpink.png"),
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.05,
                                      ),
                                      Text(
                                        "Beauty",
                                        style: Beauty
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
                                  Beauty = false;
                                  Health = true;
                                  other = false;
                                  services = [
                                    {
                                      'text': "Massage",
                                      'customimage': "images/massage.png"
                                    },
                                    {
                                      'text': "Sport Training",
                                      'customimage': "images/sports.png"
                                    },
                                    {
                                      'text': "Private Doctor",
                                      'customimage': "images/doctor.png"
                                    },
                                    {
                                      'text': "Diagnosis / Examination",
                                      'customimage': "images/exam.png"
                                    },
                                  ];
                                })
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: const Color(0xff982877),
                                  ),
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(
                                          50.0) //                 <--- border radius here
                                      ),
                                ),
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 8, horizontal: 30.0),
                                  decoration: ShapeDecoration(
                                    shape: StadiumBorder(),
                                    gradient: Health
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
                                      Health
                                          ? Image.asset(
                                              "images/healthbtnwhite.png")
                                          : Image.asset(
                                              "images/healthbtnpink.png"),
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.05,
                                      ),
                                      Text(
                                        "Health",
                                        style: Health
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
                            FlatButton(
                              padding: EdgeInsets.symmetric(
                                  vertical: 5.0, horizontal: 1),
                              onPressed: () => {
                                setState(() {
                                  Beauty = false;
                                  Health = false;
                                  other = true;

                                  services = [
                                    {
                                      'text': "Consultaion",
                                      'customimage': "images/consult.png"
                                    },
                                  ];
                                })
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: const Color(0xff982877),
                                  ),
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(
                                          50.0) //                 <--- border radius here
                                      ),
                                ),
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 8, horizontal: 30.0),
                                  decoration: ShapeDecoration(
                                    shape: StadiumBorder(),
                                    gradient: other
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
                                      other
                                          ? Image.asset(
                                              "images/healthbtnwhite.png")
                                          : Image.asset(
                                              "images/healthbtnpink.png"),
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.05,
                                      ),
                                      Text(
                                        "Others",
                                        style: other
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

                  Expanded(
                    child: Container(
                      child: ListView.builder(
                        itemCount: services.length,
                        itemBuilder: (context, index) {
                          return dotcard(
                              text: services[index]['text'],
                              customimage: services[index]['customimage']);
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
