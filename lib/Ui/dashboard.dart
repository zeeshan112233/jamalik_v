import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:jamalik/widgets/header_pink.dart';
import 'package:time_range_picker/time_range_picker.dart';

//New Class
class dashboard extends StatefulWidget {
  @override
  _dashboardState createState() => _dashboardState();
}

class _dashboardState extends State<dashboard> {
  bool Beauty = true;
  bool Health = false;
  bool other = false;
  bool mon = true;
  bool tue = false;
  bool wed = false;
  String starttime="11:00";
  String endtime="22:00";
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                child: header_pink(
                  Back: "images/back.png",
                  text: "Dashboard",
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8, top: 5),
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
                            setState(
                              () {
                                Beauty = true;
                                Health = false;
                                other = false;
                              },
                            ),
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
                                      ? Image.asset("images/beautybtnwhite.png")
                                      : Image.asset("images/beautybtnpink.png"),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.05,
                                  ),
                                  Text(
                                    "Detail",
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
                            setState(
                              () {
                                Beauty = false;
                                Health = true;
                                other = false;
                              },
                            ),
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
                                      ? Image.asset("images/healthbtnwhite.png")
                                      : Image.asset("images/healthbtnpink.png"),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.05,
                                  ),
                                  Text(
                                    "Schedule",
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
                            setState(
                              () {
                                Beauty = false;
                                Health = false;
                                other = true;
                              },
                            )
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
                                      ? Image.asset("images/healthbtnwhite.png")
                                      : Image.asset("images/healthbtnpink.png"),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.05,
                                  ),
                                  Text(
                                    "Services",
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
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Expanded(
                      child: Text("Please choose your working days"),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        FlatButton(
                          padding: EdgeInsets.symmetric(
                              vertical: 5.0, horizontal: 0.5),
                          onPressed: () => {
                            setState(() {
                              mon = !mon;
                            }),
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
                                  vertical: 4, horizontal: 5.0),
                              decoration: ShapeDecoration(
                                shape: StadiumBorder(),
                                gradient: mon
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
                                "Mon",
                                style: mon
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
                          // padding:
                          //     EdgeInsets.symmetric(vertical: 5.0, horizontal: 1),
                          onPressed: () => {
                            setState(() {
                              tue = !tue;
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
                                  vertical: 5, horizontal: 10.0),
                              decoration: ShapeDecoration(
                                shape: StadiumBorder(),
                                gradient: tue
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
                                "Tue",
                                style: tue
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
                          padding: EdgeInsets.symmetric(
                              vertical: 5.0, horizontal: 1),
                          onPressed: () => {
                            setState(() {
                              wed = !wed;
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
                                  vertical: 5, horizontal: 10.0),
                              decoration: ShapeDecoration(
                                shape: StadiumBorder(),
                                gradient: wed
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
                                "wed",
                                style: wed
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
                          padding: EdgeInsets.symmetric(
                              vertical: 5.0, horizontal: 0.5),
                          onPressed: () => {
                            setState(() {
                              mon = !mon;
                            }),
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
                                  vertical: 4, horizontal: 5.0),
                              decoration: ShapeDecoration(
                                shape: StadiumBorder(),
                                gradient: mon
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
                                "Mon",
                                style: mon
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
                          padding: EdgeInsets.symmetric(
                              vertical: 5.0, horizontal: 0.5),
                          onPressed: () => {
                            setState(() {
                              mon = !mon;
                            }),
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
                                  vertical: 4, horizontal: 5.0),
                              decoration: ShapeDecoration(
                                shape: StadiumBorder(),
                                gradient: mon
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
                                "Mon",
                                style: mon
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
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Expanded(
                      child: Text("Please choose your working hours"),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.10,
                  right: MediaQuery.of(context).size.width * 0.10,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(1, 2), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.width * 0.02,
                      left: MediaQuery.of(context).size.width * 0.05,
                      right: MediaQuery.of(context).size.width * 0.05,
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  "images/clock.png",
                                  width: 20,
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.02,
                                ),
                                Text(
                                  "MONDAY",
                                  style: TextStyle(
                                    height: 1.5,
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  starttime +" "+ endtime,
                                  style: TextStyle(
                                    height: 1.5,
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.02,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    print("pen clicked");
                                    showTimeRangePicker(
                                      context: context,
                                      start: TimeOfDay(hour: 22, minute: 9),
                                      onStartChange: (start) {
                                        setState(() {
                                          starttime=start.hour.toString()+" : " +start.minute.toString();
                                        });
                                        
                                        print("start time is" + starttime);
                                      },
                                      onEndChange: (end) {
                                        setState(() {
                                          endtime=end.hour.toString()+" : " +end.minute.toString();
                                        });
                                        
                                        print("end time " + endtime);
                                      },
                                      interval: Duration(minutes: 01),
                                      use24HourFormat: false,
                                      padding: 30,
                                      strokeWidth: 20,
                                      handlerRadius: 14,
                                      strokeColor: Colors.orange,
                                      handlerColor: Colors.orange[700],
                                      selectedColor: Colors.amber,
                                      backgroundColor:
                                          Colors.black.withOpacity(0.3),
                                      ticks: 12,
                                      ticksColor: Colors.white,
                                      snap: true,
                                      labels: [
                                        "12 pm",
                                        "3 am",
                                        "6 am",
                                        "9 am",
                                        "12 am",
                                        "3 pm",
                                        "6 pm",
                                        "9 pm"
                                      ].asMap().entries.map((e) {
                                        return ClockLabel.fromIndex(
                                            idx: e.key,
                                            length: 8,
                                            text: e.value);
                                      }).toList(),
                                      labelOffset: -30,
                                      labelStyle: TextStyle(
                                          fontSize: 22,
                                          color: Colors.grey,
                                          fontWeight: FontWeight.bold),
                                      timeTextStyle: TextStyle(
                                          color: Colors.orange[700],
                                          fontSize: 24,
                                          fontStyle: FontStyle.italic,
                                          fontWeight: FontWeight.bold),
                                      activeTimeTextStyle: TextStyle(
                                          color: Colors.orange,
                                          fontSize: 26,
                                          fontStyle: FontStyle.italic,
                                          fontWeight: FontWeight.bold),
                                    );
                                  },
                                  child: Image.asset(
                                    "images/Group.png",
                                    width: 20,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                          width: MediaQuery.of(context).size.width * 0.75,
                          child: Divider(
                            color: const Color(0xff982877),
                            thickness: 0.8,
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  "images/clock.png",
                                  width: 20,
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.02,
                                ),
                                Text(
                                  "TUESDAY",
                                  style: TextStyle(
                                    height: 1.5,
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "00:00 23:55",
                                  style: TextStyle(
                                    height: 1.5,
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.02,
                                ),
                                Image.asset(
                                  "images/Group.png",
                                  width: 20,
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                          width: MediaQuery.of(context).size.width * 0.75,
                          child: Divider(
                            color: const Color(0xff982877),
                            thickness: 0.8,
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  "images/clock.png",
                                  width: 20,
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.02,
                                ),
                                Text(
                                  "WEDNESDAY",
                                  style: TextStyle(
                                    height: 1.5,
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "00:00 23:55",
                                  style: TextStyle(
                                    height: 1.5,
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.02,
                                ),
                                Image.asset(
                                  "images/Group.png",
                                  width: 20,
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                          width: MediaQuery.of(context).size.width * 0.75,
                          child: Divider(
                            color: const Color(0xff982877),
                            thickness: 0.8,
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  "images/clock.png",
                                  width: 20,
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.02,
                                ),
                                Text(
                                  "THURSDAY",
                                  style: TextStyle(
                                    height: 1.5,
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "00:00 23:55",
                                  style: TextStyle(
                                    height: 1.5,
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.02,
                                ),
                                Image.asset(
                                  "images/Group.png",
                                  width: 20,
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                          width: MediaQuery.of(context).size.width * 0.75,
                          child: Divider(
                            color: const Color(0xff982877),
                            thickness: 0.8,
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  "images/clock.png",
                                  width: 20,
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.02,
                                ),
                                Text(
                                  "FRIDAY",
                                  style: TextStyle(
                                    height: 1.5,
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "00:00 23:55",
                                  style: TextStyle(
                                    height: 1.5,
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.02,
                                ),
                                Image.asset(
                                  "images/Group.png",
                                  width: 20,
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                          width: MediaQuery.of(context).size.width * 0.75,
                          child: Divider(
                            color: const Color(0xff982877),
                            thickness: 0.8,
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  "images/clock.png",
                                  width: 20,
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.02,
                                ),
                                Text(
                                  "SATURDAY",
                                  style: TextStyle(
                                    height: 1.5,
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "00:00 23:55",
                                  style: TextStyle(
                                    height: 1.5,
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.02,
                                ),
                                Image.asset(
                                  "images/Group.png",
                                  width: 20,
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                          width: MediaQuery.of(context).size.width * 0.75,
                          child: Divider(
                            color: const Color(0xff982877),
                            thickness: 0.8,
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  "images/clock.png",
                                  width: 20,
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.02,
                                ),
                                Text(
                                  "SUNDAY",
                                  style: TextStyle(
                                    height: 1.5,
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "00:00 23:55",
                                  style: TextStyle(
                                    height: 1.5,
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.02,
                                ),
                                Image.asset(
                                  "images/Group.png",
                                  width: 20,
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                          width: MediaQuery.of(context).size.width * 0.75,
                          child: Divider(
                            color: const Color(0xff982877),
                            thickness: 0.8,
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
    );
  }
}
