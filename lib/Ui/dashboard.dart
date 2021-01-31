import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:jamalik/APIs/getStaffApi.dart';

import 'package:jamalik/Buttons.dart';
import 'package:jamalik/Ui/AddServiceDetails.dart';
import 'package:jamalik/Ui/AddStaff.dart';
import 'package:jamalik/Ui/FAQ.dart';
import 'package:jamalik/Ui/staff.dart';
import 'package:jamalik/redux/model/app_state.dart';

import 'package:jamalik/widgets/header_pink.dart';
import 'package:time_range_picker/time_range_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';

//New Class
class dashboard extends StatefulWidget {
  @override
  _dashboardState createState() => _dashboardState();
}

class _dashboardState extends State<dashboard> {

  
  bool _Detail = true;
  bool _Schedule = false;
  bool _Services = false;
  bool mon = false;
  bool tue = false;
  bool wed = false;
  bool thurs = false;
  bool fri = false;
  bool sat = false;
  bool sun = false;
  String monstarttime = "11:00";
  String monendtime = "22:00";
  String tuestarttime = "11:00";
  String tueendtime = "22:00";
  String wedstarttime = "11:00";
  String wedendtime = "22:00";
  String thursstarttime = "11:00";
  String thursendtime = "22:00";
  String fristarttime = "11:00";
  String friendtime = "22:00";
  String satstarttime = "11:00";
  String satendtime = "22:00";
  String sunstarttime = "11:00";
  String sunendtime = "22:00";
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: StoreConnector<Appstate, Appstate>(
              converter: (store) => store.state,
              builder: (context, state) {
                                return Column(
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width,
                                      child: header_pink(
                                        Back: "images/back.png",
                                        text: "Weekly Schedule",
                                      ),
                                    ),
                                    SingleChildScrollView(
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 8.0, right: 8, top: 5),
                                            child: Container(
                                              child: SingleChildScrollView(
                                                scrollDirection: Axis.horizontal,
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.spaceAround,
                                                  children: [
                                                    // FlatButton(
                                                    //   padding: EdgeInsets.symmetric(
                                                    //       vertical: 5.0, horizontal: 1),
                                                    //   onPressed: () => {
                                                    //     setState(
                                                    //       () {
                                                    //         _Detail = true;
                                                    //         _Schedule = false;
                                                    //         _Services = false;
                                                    //       },
                                                    //     ),
                                                    //   },
                                                    //   child: Container(
                                                    //     decoration: BoxDecoration(
                                                    //       border: Border.all(
                                                    //         color: const Color(0xff982877),
                                                    //       ),
                                                    //       borderRadius: BorderRadius.all(
                                                    //           Radius.circular(
                                                    //               50.0) //                 <--- border radius here
                                                    //           ),
                                                    //     ),
                                                    //     child: Container(
                                                    //       padding: EdgeInsets.symmetric(
                                                    //           vertical: 8, horizontal: 30.0),
                                                    //       decoration: ShapeDecoration(
                                                    //         shape: StadiumBorder(),
                                                    //         gradient: _Detail
                                                    //             ? LinearGradient(
                                                    //                 colors: [
                                                    //                   Colors.purple.shade500,
                                                    //                   Colors.pink.shade200,
                                                    //                 ],
                                                    //                 begin: Alignment.topCenter,
                                                    //                 end: Alignment.bottomCenter,
                                                    //               )
                                                    //             : LinearGradient(
                                                    //                 colors: [
                                                    //                   Colors.white,
                                                    //                   Colors.white,
                                                    //                 ],
                                                    //                 begin: Alignment.topCenter,
                                                    //                 end: Alignment.bottomCenter,
                                                    //               ),
                                                    //       ),
                                                    //       child: Row(
                                                    //         children: [
                                                    //           _Detail
                                                    //               ? Image.asset(
                                                    //                   "images/beautybtnwhite.png")
                                                    //               : Image.asset(
                                                    //                   "images/beautybtnpink.png"),
                                                    //           SizedBox(
                                                    //             width: MediaQuery.of(context)
                                                    //                     .size
                                                    //                     .width *
                                                    //                 0.05,
                                                    //           ),
                                                    //           Text(
                                                    //             "Detail",
                                                    //             style: _Detail
                                                    //                 ? TextStyle(
                                                    //                     color: Colors.white,
                                                    //                     fontFamily: "DM Sans",
                                                    //                     fontSize: 14.0,
                                                    //                     fontWeight: FontWeight.w400)
                                                    //                 : TextStyle(
                                                    //                     color: Colors.black,
                                                    //                     fontFamily: "DM Sans",
                                                    //                     fontSize: 14.0,
                                                    //                     fontWeight: FontWeight.w400,
                                                    //                   ),
                                                    //           ),
                                                    //         ],
                                                    //       ),
                                                    //     ),
                                                    //   ),
                                                    // ),
                                                    // SizedBox(
                                                    //   width: 20,
                                                    // ),
                                                    // //.......................................Button2..................................................
                                                    // FlatButton(
                                                    //   padding: EdgeInsets.symmetric(
                                                    //       vertical: 5.0, horizontal: 1),
                                                    //   onPressed: () => {
                                                    //     setState(
                                                    //       () {
                                                    //         _Detail = false;
                                                    //         _Schedule = true;
                                                    //         _Services = false;
                                                    //       },
                                                    //     ),
                                                    //   },
                                                    //   child: Container(
                                                    //     decoration: BoxDecoration(
                                                    //       border: Border.all(
                                                    //         color: const Color(0xff982877),
                                                    //       ),
                                                    //       borderRadius: BorderRadius.all(
                                                    //           Radius.circular(
                                                    //               50.0) //                 <--- border radius here
                                                    //           ),
                                                    //     ),
                                                    //     child: Container(
                                                    //       padding: EdgeInsets.symmetric(
                                                    //           vertical: 8, horizontal: 30.0),
                                                    //       decoration: ShapeDecoration(
                                                    //         shape: StadiumBorder(),
                                                    //         gradient: _Schedule
                                                    //             ? LinearGradient(
                                                    //                 colors: [
                                                    //                   Colors.purple.shade500,
                                                    //                   Colors.pink.shade200,
                                                    //                 ],
                                                    //                 begin: Alignment.topCenter,
                                                    //                 end: Alignment.bottomCenter,
                                                    //               )
                                                    //             : LinearGradient(
                                                    //                 colors: [
                                                    //                   Colors.white,
                                                    //                   Colors.white,
                                                    //                 ],
                                                    //                 begin: Alignment.topCenter,
                                                    //                 end: Alignment.bottomCenter,
                                                    //               ),
                                                    //       ),
                                                    //       child: Row(
                                                    //         children: [
                                                    //           _Schedule
                                                    //               ? Image.asset(
                                                    //                   "images/healthbtnwhite.png")
                                                    //               : Image.asset(
                                                    //                   "images/healthbtnpink.png"),
                                                    //           SizedBox(
                                                    //             width: MediaQuery.of(context)
                                                    //                     .size
                                                    //                     .width *
                                                    //                 0.05,
                                                    //           ),
                                                    //           Text(
                                                    //             "Schedule",
                                                    //             style: _Schedule
                                                    //                 ? TextStyle(
                                                    //                     color: Colors.white,
                                                    //                     fontFamily: "DM Sans",
                                                    //                     fontSize: 14.0,
                                                    //                     fontWeight: FontWeight.w400)
                                                    //                 : TextStyle(
                                                    //                     color: Colors.black,
                                                    //                     fontFamily: "DM Sans",
                                                    //                     fontSize: 14.0,
                                                    //                     fontWeight: FontWeight.w400,
                                                    //                   ),
                                                    //           ),
                                                    //         ],
                                                    //       ),
                                                    //     ),
                                                    //   ),
                                                    // ),
                                                    // SizedBox(
                                                    //   width: 20,
                                                    // ),
                                                    // FlatButton(
                                                    //   padding: EdgeInsets.symmetric(
                                                    //       vertical: 5.0, horizontal: 1),
                                                    //   onPressed: () => {
                                                    //     setState(
                                                    //       () {
                                                    //         _Detail = false;
                                                    //         _Schedule = false;
                                                    //         _Services = true;
                                                    //       },
                                                    //     )
                                                    //   },
                                                    //   child: Container(
                                                    //     decoration: BoxDecoration(
                                                    //       border: Border.all(
                                                    //         color: const Color(0xff982877),
                                                    //       ),
                                                    //       borderRadius: BorderRadius.all(
                                                    //           Radius.circular(
                                                    //               50.0) //                 <--- border radius here
                                                    //           ),
                                                    //     ),
                                                    //     child: Container(
                                                    //       padding: EdgeInsets.symmetric(
                                                    //           vertical: 8, horizontal: 30.0),
                                                    //       decoration: ShapeDecoration(
                                                    //         shape: StadiumBorder(),
                                                    //         gradient: _Services
                                                    //             ? LinearGradient(
                                                    //                 colors: [
                                                    //                   Colors.purple.shade500,
                                                    //                   Colors.pink.shade200,
                                                    //                 ],
                                                    //                 begin: Alignment.topCenter,
                                                    //                 end: Alignment.bottomCenter,
                                                    //               )
                                                    //             : LinearGradient(
                                                    //                 colors: [
                                                    //                   Colors.white,
                                                    //                   Colors.white,
                                                    //                 ],
                                                    //                 begin: Alignment.topCenter,
                                                    //                 end: Alignment.bottomCenter,
                                                    //               ),
                                                    //       ),
                                                    //       child: Row(
                                                    //         children: [
                                                    //           _Services
                                                    //               ? Image.asset(
                                                    //                   "images/healthbtnwhite.png")
                                                    //               : Image.asset(
                                                    //                   "images/healthbtnpink.png"),
                                                    //           SizedBox(
                                                    //             width: MediaQuery.of(context)
                                                    //                     .size
                                                    //                     .width *
                                                    //                 0.05,
                                                    //           ),
                                                    //           Text(
                                                    //             "Services",
                                                    //             style: _Services
                                                    //                 ? TextStyle(
                                                    //                     color: Colors.white,
                                                    //                     fontFamily: "DM Sans",
                                                    //                     fontSize: 14.0,
                                                    //                     fontWeight: FontWeight.w400)
                                                    //                 : TextStyle(
                                                    //                     color: Colors.black,
                                                    //                     fontFamily: "DM Sans",
                                                    //                     fontSize: 14.0,
                                                    //                     fontWeight: FontWeight.w400,
                                                    //                   ),
                                                    //           ),
                                                    //         ],
                                                    //       ),
                                                    //     ),
                                                    //   ),
                                                    // ),
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
                                                  child:
                                                      Text("Please choose your working days"),
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
                                                    SizedBox(
                                                      width: MediaQuery.of(context).size.width *
                                                          0.03,
                                                    ),
                                                    GestureDetector(
                                                      onTap: () => {
                                                        setState(() {
                                                          mon = !mon;
                                                        })
                                                      },
                                                      child: Container(
                                                        padding: EdgeInsets.symmetric(
                                                            vertical: 5, horizontal: 20.0),
                                                        decoration: BoxDecoration(
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
                                                          border: Border.all(
                                                            color: const Color(0xff982877),
                                                          ),
                                                          borderRadius: BorderRadius.all(
                                                            Radius.circular(
                                                                50.0), //                 <--- border radius here
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
                                                    SizedBox(
                                                      width: MediaQuery.of(context).size.width *
                                                          0.03,
                                                    ),
                                                    //tue
                                                    GestureDetector(
                                                      onTap: () => {
                                                        setState(() {
                                                          tue = !tue;
                                                        })
                                                      },
                                                      child: Container(
                                                        padding: EdgeInsets.symmetric(
                                                            vertical: 5, horizontal: 20.0),
                                                        decoration: BoxDecoration(
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
                                                          border: Border.all(
                                                            color: const Color(0xff982877),
                                                          ),
                                                          borderRadius: BorderRadius.all(
                                                            Radius.circular(
                                                                50.0), //                 <--- border radius here
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
                                                    SizedBox(
                                                      width: MediaQuery.of(context).size.width *
                                                          0.03,
                                                    ),
                                                    //wed
                                                    GestureDetector(
                                                      onTap: () => {
                                                        setState(() {
                                                          wed = !wed;
                                                        })
                                                      },
                                                      child: Container(
                                                        padding: EdgeInsets.symmetric(
                                                            vertical: 5, horizontal: 20.0),
                                                        decoration: BoxDecoration(
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
                                                          border: Border.all(
                                                            color: const Color(0xff982877),
                                                          ),
                                                          borderRadius: BorderRadius.all(
                                                            Radius.circular(
                                                                50.0), //                 <--- border radius here
                                                          ),
                                                        ),
                                                        child: Text(
                                                          "Wed",
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
                                                    SizedBox(
                                                      width: MediaQuery.of(context).size.width *
                                                          0.03,
                                                    ),
                                                    //Thures
                                                    GestureDetector(
                                                      onTap: () => {
                                                        setState(() {
                                                          thurs = !thurs;
                                                        })
                                                      },
                                                      child: Container(
                                                        padding: EdgeInsets.symmetric(
                                                            vertical: 5, horizontal: 20.0),
                                                        decoration: BoxDecoration(
                                                          gradient: thurs
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
                                                          border: Border.all(
                                                            color: const Color(0xff982877),
                                                          ),
                                                          borderRadius: BorderRadius.all(
                                                            Radius.circular(
                                                                50.0), //                 <--- border radius here
                                                          ),
                                                        ),
                                                        child: Text(
                                                          "Thurs",
                                                          style: thurs
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
                                                    SizedBox(
                                                      width: MediaQuery.of(context).size.width *
                                                          0.03,
                                                    ),
                                                    //Fri
                                                    GestureDetector(
                                                      onTap: () => {
                                                        setState(() {
                                                          fri = !fri;
                                                        })
                                                      },
                                                      child: Container(
                                                        padding: EdgeInsets.symmetric(
                                                            vertical: 5, horizontal: 25.0),
                                                        decoration: BoxDecoration(
                                                          gradient: fri
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
                                                          border: Border.all(
                                                            color: const Color(0xff982877),
                                                          ),
                                                          borderRadius: BorderRadius.all(
                                                            Radius.circular(
                                                                50.0), //                 <--- border radius here
                                                          ),
                                                        ),
                                                        child: Text(
                                                          "Fri",
                                                          style: fri
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
                                                    SizedBox(
                                                      width: MediaQuery.of(context).size.width *
                                                          0.03,
                                                    ),
                                                    //Sat
                                                    GestureDetector(
                                                      onTap: () => {
                                                        setState(() {
                                                          sat = !sat;
                                                        })
                                                      },
                                                      child: Container(
                                                        padding: EdgeInsets.symmetric(
                                                            vertical: 5, horizontal: 25.0),
                                                        decoration: BoxDecoration(
                                                          gradient: sat
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
                                                          border: Border.all(
                                                            color: const Color(0xff982877),
                                                          ),
                                                          borderRadius: BorderRadius.all(
                                                            Radius.circular(
                                                                50.0), //                 <--- border radius here
                                                          ),
                                                        ),
                                                        child: Text(
                                                          "Sat",
                                                          style: sat
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
                                                    SizedBox(
                                                      width: MediaQuery.of(context).size.width *
                                                          0.03,
                                                    ),
                                                    //Sun
                                                    GestureDetector(
                                                      onTap: () => {
                                                        setState(() {
                                                          sun = !sun;
                                                        })
                                                      },
                                                      child: Container(
                                                        padding: EdgeInsets.symmetric(
                                                            vertical: 5, horizontal: 20.0),
                                                        decoration: BoxDecoration(
                                                          gradient: sun
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
                                                          border: Border.all(
                                                            color: const Color(0xff982877),
                                                          ),
                                                          borderRadius: BorderRadius.all(
                                                            Radius.circular(
                                                                50.0), //                 <--- border radius here
                                                          ),
                                                        ),
                                                        child: Text(
                                                          "Sun",
                                                          style: sun
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
                                                  child:
                                                      Text("Please choose your working hours"),
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
                                                    offset: Offset(
                                                        1, 2), // changes position of shadow
                                                  ),
                                                ],
                                              ),
                                              child: Padding(
                                                padding: EdgeInsets.only(
                                                  top: MediaQuery.of(context).size.width * 0.02,
                                                  left:
                                                      MediaQuery.of(context).size.width * 0.05,
                                                  right:
                                                      MediaQuery.of(context).size.width * 0.05,
                                                ),
                                                child: Column(
                                                  children: [
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment.spaceBetween,
                                                      children: [
                                                        Row(
                                                          children: [
                                                            Image.asset(
                                                              "images/clock.png",
                                                              width: 20,
                                                            ),
                                                            SizedBox(
                                                              width: MediaQuery.of(context)
                                                                      .size
                                                                      .width *
                                                                  0.02,
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
                                                            mon
                                                                ? Text(
                                                                    monstarttime +
                                                                        "  to   " +
                                                                        monendtime,
                                                                    style: TextStyle(
                                                                      height: 1.5,
                                                                      fontSize: 14.0,
                                                                      fontWeight:
                                                                          FontWeight.w400,
                                                                    ),
                                                                  )
                                                                : Text(
                                                                    "Closed",
                                                                    style: TextStyle(
                                                                      height: 1.5,
                                                                      fontSize: 14.0,
                                                                      fontWeight:
                                                                          FontWeight.w400,
                                                                    ),
                                                                  ),
                                                            SizedBox(
                                                              width: MediaQuery.of(context)
                                                                      .size
                                                                      .width *
                                                                  0.02,
                                                            ),
                                                            !mon
                                                                ? Image.asset(
                                                                    "images/Group.png",
                                                                    width: 20,
                                                                  )
                                                                : GestureDetector(
                                                                    onTap: () {
                                                                      print("pen clicked");
                                                                      showTimeRangePicker(
                                                                        context: context,
                                                                        start: TimeOfDay(
                                                                            hour: 22,
                                                                            minute: 9),
                                                                        onStartChange: (start) {
                                                                          setState(() {
                                                                            monstarttime = start
                                                                                    .hour
                                                                                    .toString() +
                                                                                " : " +
                                                                                start.minute
                                                                                    .toString();
                                                                          });
                
                                                                          print(
                                                                              "start time is" +
                                                                                  monstarttime);
                                                                        },
                                                                        onEndChange: (end) {
                                                                          setState(() {
                                                                            monendtime = end
                                                                                    .hour
                                                                                    .toString() +
                                                                                " : " +
                                                                                end.minute
                                                                                    .toString();
                                                                          });
                
                                                                          print("end time " +
                                                                              monendtime);
                                                                        },
                                                                        interval: Duration(
                                                                            minutes: 01),
                                                                        use24HourFormat: false,
                                                                        padding: 30,
                                                                        strokeWidth: 20,
                                                                        handlerRadius: 14,
                                                                        strokeColor:
                                                                            Colors.orange,
                                                                        handlerColor:
                                                                            Colors.orange[700],
                                                                        selectedColor:
                                                                            Colors.amber,
                                                                        backgroundColor: Colors
                                                                            .black
                                                                            .withOpacity(0.3),
                                                                        ticks: 12,
                                                                        ticksColor:
                                                                            Colors.white,
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
                                                                        ]
                                                                            .asMap()
                                                                            .entries
                                                                            .map((e) {
                                                                          return ClockLabel
                                                                              .fromIndex(
                                                                                  idx: e.key,
                                                                                  length: 8,
                                                                                  text:
                                                                                      e.value);
                                                                        }).toList(),
                                                                        labelOffset: -30,
                                                                        labelStyle: TextStyle(
                                                                            fontSize: 22,
                                                                            color: Colors.grey,
                                                                            fontWeight:
                                                                                FontWeight
                                                                                    .bold),
                                                                        timeTextStyle:
                                                                            TextStyle(
                                                                                color: Colors
                                                                                        .orange[
                                                                                    700],
                                                                                fontSize: 24,
                                                                                fontStyle:
                                                                                    FontStyle
                                                                                        .italic,
                                                                                fontWeight:
                                                                                    FontWeight
                                                                                        .bold),
                                                                        activeTimeTextStyle:
                                                                            TextStyle(
                                                                                color: Colors
                                                                                    .orange,
                                                                                fontSize: 26,
                                                                                fontStyle:
                                                                                    FontStyle
                                                                                        .italic,
                                                                                fontWeight:
                                                                                    FontWeight
                                                                                        .bold),
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
                                                      height:
                                                          MediaQuery.of(context).size.height *
                                                              0.02,
                                                      width: MediaQuery.of(context).size.width *
                                                          0.75,
                                                      child: Divider(
                                                        color: const Color(0xff982877),
                                                        thickness: 0.8,
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      height:
                                                          MediaQuery.of(context).size.height *
                                                              0.02,
                                                    ),
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment.spaceBetween,
                                                      children: [
                                                        Row(
                                                          children: [
                                                            Image.asset(
                                                              "images/clock.png",
                                                              width: 20,
                                                            ),
                                                            SizedBox(
                                                              width: MediaQuery.of(context)
                                                                      .size
                                                                      .width *
                                                                  0.02,
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
                                                            tue
                                                                ? Text(
                                                                    tuestarttime +
                                                                        "  to   " +
                                                                        tueendtime,
                                                                    style: TextStyle(
                                                                      height: 1.5,
                                                                      fontSize: 14.0,
                                                                      fontWeight:
                                                                          FontWeight.w400,
                                                                    ),
                                                                  )
                                                                : Text(
                                                                    "Closed",
                                                                    style: TextStyle(
                                                                      height: 1.5,
                                                                      fontSize: 14.0,
                                                                      fontWeight:
                                                                          FontWeight.w400,
                                                                    ),
                                                                  ),
                                                            SizedBox(
                                                              width: MediaQuery.of(context)
                                                                      .size
                                                                      .width *
                                                                  0.02,
                                                            ),
                                                            !tue
                                                                ? Image.asset(
                                                                    "images/Group.png",
                                                                    width: 20,
                                                                  )
                                                                : GestureDetector(
                                                                    onTap: () {
                                                                      print("pen clicked");
                                                                      showTimeRangePicker(
                                                                        context: context,
                                                                        start: TimeOfDay(
                                                                            hour: 22,
                                                                            minute: 9),
                                                                        onStartChange: (start) {
                                                                          setState(() {
                                                                            tuestarttime = start
                                                                                    .hour
                                                                                    .toString() +
                                                                                " : " +
                                                                                start.minute
                                                                                    .toString();
                                                                          });
                
                                                                          print(
                                                                              "start time is" +
                                                                                  tuestarttime);
                                                                        },
                                                                        onEndChange: (end) {
                                                                          setState(() {
                                                                            tueendtime = end
                                                                                    .hour
                                                                                    .toString() +
                                                                                " : " +
                                                                                end.minute
                                                                                    .toString();
                                                                          });
                
                                                                          print("end time " +
                                                                              tueendtime);
                                                                        },
                                                                        interval: Duration(
                                                                            minutes: 01),
                                                                        use24HourFormat: false,
                                                                        padding: 30,
                                                                        strokeWidth: 20,
                                                                        handlerRadius: 14,
                                                                        strokeColor:
                                                                            Colors.orange,
                                                                        handlerColor:
                                                                            Colors.orange[700],
                                                                        selectedColor:
                                                                            Colors.amber,
                                                                        backgroundColor: Colors
                                                                            .black
                                                                            .withOpacity(0.3),
                                                                        ticks: 12,
                                                                        ticksColor:
                                                                            Colors.white,
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
                                                                        ]
                                                                            .asMap()
                                                                            .entries
                                                                            .map((e) {
                                                                          return ClockLabel
                                                                              .fromIndex(
                                                                                  idx: e.key,
                                                                                  length: 8,
                                                                                  text:
                                                                                      e.value);
                                                                        }).toList(),
                                                                        labelOffset: -30,
                                                                        labelStyle: TextStyle(
                                                                            fontSize: 22,
                                                                            color: Colors.grey,
                                                                            fontWeight:
                                                                                FontWeight
                                                                                    .bold),
                                                                        timeTextStyle:
                                                                            TextStyle(
                                                                                color: Colors
                                                                                        .orange[
                                                                                    700],
                                                                                fontSize: 24,
                                                                                fontStyle:
                                                                                    FontStyle
                                                                                        .italic,
                                                                                fontWeight:
                                                                                    FontWeight
                                                                                        .bold),
                                                                        activeTimeTextStyle:
                                                                            TextStyle(
                                                                                color: Colors
                                                                                    .orange,
                                                                                fontSize: 26,
                                                                                fontStyle:
                                                                                    FontStyle
                                                                                        .italic,
                                                                                fontWeight:
                                                                                    FontWeight
                                                                                        .bold),
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
                                                      height:
                                                          MediaQuery.of(context).size.height *
                                                              0.02,
                                                      width: MediaQuery.of(context).size.width *
                                                          0.75,
                                                      child: Divider(
                                                        color: const Color(0xff982877),
                                                        thickness: 0.8,
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      height:
                                                          MediaQuery.of(context).size.height *
                                                              0.02,
                                                    ),
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment.spaceBetween,
                                                      children: [
                                                        Row(
                                                          children: [
                                                            Image.asset(
                                                              "images/clock.png",
                                                              width: 20,
                                                            ),
                                                            SizedBox(
                                                              width: MediaQuery.of(context)
                                                                      .size
                                                                      .width *
                                                                  0.02,
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
                                                            wed
                                                                ? Text(
                                                                    wedstarttime +
                                                                        "  to   " +
                                                                        wedendtime,
                                                                    style: TextStyle(
                                                                      height: 1.5,
                                                                      fontSize: 14.0,
                                                                      fontWeight:
                                                                          FontWeight.w400,
                                                                    ),
                                                                  )
                                                                : Text(
                                                                    "Closed",
                                                                    style: TextStyle(
                                                                      height: 1.5,
                                                                      fontSize: 14.0,
                                                                      fontWeight:
                                                                          FontWeight.w400,
                                                                    ),
                                                                  ),
                                                            SizedBox(
                                                              width: MediaQuery.of(context)
                                                                      .size
                                                                      .width *
                                                                  0.02,
                                                            ),
                                                            !wed
                                                                ? Image.asset(
                                                                    "images/Group.png",
                                                                    width: 20,
                                                                  )
                                                                : GestureDetector(
                                                                    onTap: () {
                                                                      print("pen clicked");
                                                                      showTimeRangePicker(
                                                                        context: context,
                                                                        start: TimeOfDay(
                                                                            hour: 22,
                                                                            minute: 9),
                                                                        onStartChange: (start) {
                                                                          setState(() {
                                                                            wedstarttime = start
                                                                                    .hour
                                                                                    .toString() +
                                                                                " : " +
                                                                                start.minute
                                                                                    .toString();
                                                                          });
                
                                                                          print(
                                                                              "start time is" +
                                                                                  wedstarttime);
                                                                        },
                                                                        onEndChange: (end) {
                                                                          setState(() {
                                                                            wedendtime = end
                                                                                    .hour
                                                                                    .toString() +
                                                                                " : " +
                                                                                end.minute
                                                                                    .toString();
                                                                          });
                
                                                                          print("end time " +
                                                                              wedendtime);
                                                                        },
                                                                        interval: Duration(
                                                                            minutes: 01),
                                                                        use24HourFormat: false,
                                                                        padding: 30,
                                                                        strokeWidth: 20,
                                                                        handlerRadius: 14,
                                                                        strokeColor:
                                                                            Colors.orange,
                                                                        handlerColor:
                                                                            Colors.orange[700],
                                                                        selectedColor:
                                                                            Colors.amber,
                                                                        backgroundColor: Colors
                                                                            .black
                                                                            .withOpacity(0.3),
                                                                        ticks: 12,
                                                                        ticksColor:
                                                                            Colors.white,
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
                                                                        ]
                                                                            .asMap()
                                                                            .entries
                                                                            .map((e) {
                                                                          return ClockLabel
                                                                              .fromIndex(
                                                                                  idx: e.key,
                                                                                  length: 8,
                                                                                  text:
                                                                                      e.value);
                                                                        }).toList(),
                                                                        labelOffset: -30,
                                                                        labelStyle: TextStyle(
                                                                            fontSize: 22,
                                                                            color: Colors.grey,
                                                                            fontWeight:
                                                                                FontWeight
                                                                                    .bold),
                                                                        timeTextStyle:
                                                                            TextStyle(
                                                                                color: Colors
                                                                                        .orange[
                                                                                    700],
                                                                                fontSize: 24,
                                                                                fontStyle:
                                                                                    FontStyle
                                                                                        .italic,
                                                                                fontWeight:
                                                                                    FontWeight
                                                                                        .bold),
                                                                        activeTimeTextStyle:
                                                                            TextStyle(
                                                                                color: Colors
                                                                                    .orange,
                                                                                fontSize: 26,
                                                                                fontStyle:
                                                                                    FontStyle
                                                                                        .italic,
                                                                                fontWeight:
                                                                                    FontWeight
                                                                                        .bold),
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
                                                      height:
                                                          MediaQuery.of(context).size.height *
                                                              0.02,
                                                      width: MediaQuery.of(context).size.width *
                                                          0.75,
                                                      child: Divider(
                                                        color: const Color(0xff982877),
                                                        thickness: 0.8,
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      height:
                                                          MediaQuery.of(context).size.height *
                                                              0.02,
                                                    ),
                                                    //Thurs
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment.spaceBetween,
                                                      children: [
                                                        Row(
                                                          children: [
                                                            Image.asset(
                                                              "images/clock.png",
                                                              width: 20,
                                                            ),
                                                            SizedBox(
                                                              width: MediaQuery.of(context)
                                                                      .size
                                                                      .width *
                                                                  0.02,
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
                                                            thurs
                                                                ? Text(
                                                                    thursstarttime +
                                                                        "  to   " +
                                                                        thursendtime,
                                                                    style: TextStyle(
                                                                      height: 1.5,
                                                                      fontSize: 14.0,
                                                                      fontWeight:
                                                                          FontWeight.w400,
                                                                    ),
                                                                  )
                                                                : Text(
                                                                    "Closed",
                                                                    style: TextStyle(
                                                                      height: 1.5,
                                                                      fontSize: 14.0,
                                                                      fontWeight:
                                                                          FontWeight.w400,
                                                                    ),
                                                                  ),
                                                            SizedBox(
                                                              width: MediaQuery.of(context)
                                                                      .size
                                                                      .width *
                                                                  0.02,
                                                            ),
                                                            !thurs
                                                                ? Image.asset(
                                                                    "images/Group.png",
                                                                    width: 20,
                                                                  )
                                                                : GestureDetector(
                                                                    onTap: () {
                                                                      print("pen clicked");
                                                                      showTimeRangePicker(
                                                                        context: context,
                                                                        start: TimeOfDay(
                                                                            hour: 22,
                                                                            minute: 9),
                                                                        onStartChange: (start) {
                                                                          setState(() {
                                                                            thursstarttime = start
                                                                                    .hour
                                                                                    .toString() +
                                                                                " : " +
                                                                                start.minute
                                                                                    .toString();
                                                                          });
                
                                                                          print("start time is" +
                                                                              thursstarttime);
                                                                        },
                                                                        onEndChange: (end) {
                                                                          setState(() {
                                                                            thursendtime = end
                                                                                    .hour
                                                                                    .toString() +
                                                                                " : " +
                                                                                end.minute
                                                                                    .toString();
                                                                          });
                
                                                                          print("end time " +
                                                                              thursendtime);
                                                                        },
                                                                        interval: Duration(
                                                                            minutes: 01),
                                                                        use24HourFormat: false,
                                                                        padding: 30,
                                                                        strokeWidth: 20,
                                                                        handlerRadius: 14,
                                                                        strokeColor:
                                                                            Colors.orange,
                                                                        handlerColor:
                                                                            Colors.orange[700],
                                                                        selectedColor:
                                                                            Colors.amber,
                                                                        backgroundColor: Colors
                                                                            .black
                                                                            .withOpacity(0.3),
                                                                        ticks: 12,
                                                                        ticksColor:
                                                                            Colors.white,
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
                                                                        ]
                                                                            .asMap()
                                                                            .entries
                                                                            .map((e) {
                                                                          return ClockLabel
                                                                              .fromIndex(
                                                                                  idx: e.key,
                                                                                  length: 8,
                                                                                  text:
                                                                                      e.value);
                                                                        }).toList(),
                                                                        labelOffset: -30,
                                                                        labelStyle: TextStyle(
                                                                            fontSize: 22,
                                                                            color: Colors.grey,
                                                                            fontWeight:
                                                                                FontWeight
                                                                                    .bold),
                                                                        timeTextStyle:
                                                                            TextStyle(
                                                                                color: Colors
                                                                                        .orange[
                                                                                    700],
                                                                                fontSize: 24,
                                                                                fontStyle:
                                                                                    FontStyle
                                                                                        .italic,
                                                                                fontWeight:
                                                                                    FontWeight
                                                                                        .bold),
                                                                        activeTimeTextStyle:
                                                                            TextStyle(
                                                                                color: Colors
                                                                                    .orange,
                                                                                fontSize: 26,
                                                                                fontStyle:
                                                                                    FontStyle
                                                                                        .italic,
                                                                                fontWeight:
                                                                                    FontWeight
                                                                                        .bold),
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
                                                      height:
                                                          MediaQuery.of(context).size.height *
                                                              0.02,
                                                      width: MediaQuery.of(context).size.width *
                                                          0.75,
                                                      child: Divider(
                                                        color: const Color(0xff982877),
                                                        thickness: 0.8,
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      height:
                                                          MediaQuery.of(context).size.height *
                                                              0.02,
                                                    ),
                                                    //Fri
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment.spaceBetween,
                                                      children: [
                                                        Row(
                                                          children: [
                                                            Image.asset(
                                                              "images/clock.png",
                                                              width: 20,
                                                            ),
                                                            SizedBox(
                                                              width: MediaQuery.of(context)
                                                                      .size
                                                                      .width *
                                                                  0.02,
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
                                                            fri
                                                                ? Text(
                                                                    fristarttime +
                                                                        "  to   " +
                                                                        friendtime,
                                                                    style: TextStyle(
                                                                      height: 1.5,
                                                                      fontSize: 14.0,
                                                                      fontWeight:
                                                                          FontWeight.w400,
                                                                    ),
                                                                  )
                                                                : Text(
                                                                    "Closed",
                                                                    style: TextStyle(
                                                                      height: 1.5,
                                                                      fontSize: 14.0,
                                                                      fontWeight:
                                                                          FontWeight.w400,
                                                                    ),
                                                                  ),
                                                            SizedBox(
                                                              width: MediaQuery.of(context)
                                                                      .size
                                                                      .width *
                                                                  0.02,
                                                            ),
                                                            !fri
                                                                ? Image.asset(
                                                                    "images/Group.png",
                                                                    width: 20,
                                                                  )
                                                                : GestureDetector(
                                                                    onTap: () {
                                                                      print("pen clicked");
                                                                      showTimeRangePicker(
                                                                        context: context,
                                                                        start: TimeOfDay(
                                                                            hour: 22,
                                                                            minute: 9),
                                                                        onStartChange: (start) {
                                                                          setState(() {
                                                                            fristarttime = start
                                                                                    .hour
                                                                                    .toString() +
                                                                                " : " +
                                                                                start.minute
                                                                                    .toString();
                                                                          });
                
                                                                          print(
                                                                              "start time is" +
                                                                                  fristarttime);
                                                                        },
                                                                        onEndChange: (end) {
                                                                          setState(() {
                                                                            friendtime = end
                                                                                    .hour
                                                                                    .toString() +
                                                                                " : " +
                                                                                end.minute
                                                                                    .toString();
                                                                          });
                
                                                                          print("end time " +
                                                                              friendtime);
                                                                        },
                                                                        interval: Duration(
                                                                            minutes: 01),
                                                                        use24HourFormat: false,
                                                                        padding: 30,
                                                                        strokeWidth: 20,
                                                                        handlerRadius: 14,
                                                                        strokeColor:
                                                                            Colors.orange,
                                                                        handlerColor:
                                                                            Colors.orange[700],
                                                                        selectedColor:
                                                                            Colors.amber,
                                                                        backgroundColor: Colors
                                                                            .black
                                                                            .withOpacity(0.3),
                                                                        ticks: 12,
                                                                        ticksColor:
                                                                            Colors.white,
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
                                                                        ]
                                                                            .asMap()
                                                                            .entries
                                                                            .map((e) {
                                                                          return ClockLabel
                                                                              .fromIndex(
                                                                                  idx: e.key,
                                                                                  length: 8,
                                                                                  text:
                                                                                      e.value);
                                                                        }).toList(),
                                                                        labelOffset: -30,
                                                                        labelStyle: TextStyle(
                                                                            fontSize: 22,
                                                                            color: Colors.grey,
                                                                            fontWeight:
                                                                                FontWeight
                                                                                    .bold),
                                                                        timeTextStyle:
                                                                            TextStyle(
                                                                                color: Colors
                                                                                        .orange[
                                                                                    700],
                                                                                fontSize: 24,
                                                                                fontStyle:
                                                                                    FontStyle
                                                                                        .italic,
                                                                                fontWeight:
                                                                                    FontWeight
                                                                                        .bold),
                                                                        activeTimeTextStyle:
                                                                            TextStyle(
                                                                                color: Colors
                                                                                    .orange,
                                                                                fontSize: 26,
                                                                                fontStyle:
                                                                                    FontStyle
                                                                                        .italic,
                                                                                fontWeight:
                                                                                    FontWeight
                                                                                        .bold),
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
                                                      height:
                                                          MediaQuery.of(context).size.height *
                                                              0.02,
                                                      width: MediaQuery.of(context).size.width *
                                                          0.75,
                                                      child: Divider(
                                                        color: const Color(0xff982877),
                                                        thickness: 0.8,
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      height:
                                                          MediaQuery.of(context).size.height *
                                                              0.02,
                                                    ),
                                                    //Sat
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment.spaceBetween,
                                                      children: [
                                                        Row(
                                                          children: [
                                                            Image.asset(
                                                              "images/clock.png",
                                                              width: 20,
                                                            ),
                                                            SizedBox(
                                                              width: MediaQuery.of(context)
                                                                      .size
                                                                      .width *
                                                                  0.02,
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
                                                            sat
                                                                ? Text(
                                                                    satstarttime +
                                                                        "  to   " +
                                                                        satendtime,
                                                                    style: TextStyle(
                                                                      height: 1.5,
                                                                      fontSize: 14.0,
                                                                      fontWeight:
                                                                          FontWeight.w400,
                                                                    ),
                                                                  )
                                                                : Text(
                                                                    "Closed",
                                                                    style: TextStyle(
                                                                      height: 1.5,
                                                                      fontSize: 14.0,
                                                                      fontWeight:
                                                                          FontWeight.w400,
                                                                    ),
                                                                  ),
                                                            SizedBox(
                                                              width: MediaQuery.of(context)
                                                                      .size
                                                                      .width *
                                                                  0.02,
                                                            ),
                                                            !sat
                                                                ? Image.asset(
                                                                    "images/Group.png",
                                                                    width: 20,
                                                                  )
                                                                : GestureDetector(
                                                                    onTap: () {
                                                                      print("pen clicked");
                                                                      showTimeRangePicker(
                                                                        context: context,
                                                                        start: TimeOfDay(
                                                                            hour: 22,
                                                                            minute: 9),
                                                                        onStartChange: (start) {
                                                                          setState(() {
                                                                            satstarttime = start
                                                                                    .hour
                                                                                    .toString() +
                                                                                " : " +
                                                                                start.minute
                                                                                    .toString();
                                                                          });
                
                                                                          print(
                                                                              "start time is" +
                                                                                  satstarttime);
                                                                        },
                                                                        onEndChange: (end) {
                                                                          setState(() {
                                                                            satendtime = end
                                                                                    .hour
                                                                                    .toString() +
                                                                                " : " +
                                                                                end.minute
                                                                                    .toString();
                                                                          });
                
                                                                          print("end time " +
                                                                              satendtime);
                                                                        },
                                                                        interval: Duration(
                                                                            minutes: 01),
                                                                        use24HourFormat: false,
                                                                        padding: 30,
                                                                        strokeWidth: 20,
                                                                        handlerRadius: 14,
                                                                        strokeColor:
                                                                            Colors.orange,
                                                                        handlerColor:
                                                                            Colors.orange[700],
                                                                        selectedColor:
                                                                            Colors.amber,
                                                                        backgroundColor: Colors
                                                                            .black
                                                                            .withOpacity(0.3),
                                                                        ticks: 12,
                                                                        ticksColor:
                                                                            Colors.white,
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
                                                                        ]
                                                                            .asMap()
                                                                            .entries
                                                                            .map((e) {
                                                                          return ClockLabel
                                                                              .fromIndex(
                                                                                  idx: e.key,
                                                                                  length: 8,
                                                                                  text:
                                                                                      e.value);
                                                                        }).toList(),
                                                                        labelOffset: -30,
                                                                        labelStyle: TextStyle(
                                                                            fontSize: 22,
                                                                            color: Colors.grey,
                                                                            fontWeight:
                                                                                FontWeight
                                                                                    .bold),
                                                                        timeTextStyle:
                                                                            TextStyle(
                                                                                color: Colors
                                                                                        .orange[
                                                                                    700],
                                                                                fontSize: 24,
                                                                                fontStyle:
                                                                                    FontStyle
                                                                                        .italic,
                                                                                fontWeight:
                                                                                    FontWeight
                                                                                        .bold),
                                                                        activeTimeTextStyle:
                                                                            TextStyle(
                                                                                color: Colors
                                                                                    .orange,
                                                                                fontSize: 26,
                                                                                fontStyle:
                                                                                    FontStyle
                                                                                        .italic,
                                                                                fontWeight:
                                                                                    FontWeight
                                                                                        .bold),
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
                                                      height:
                                                          MediaQuery.of(context).size.height *
                                                              0.02,
                                                      width: MediaQuery.of(context).size.width *
                                                          0.75,
                                                      child: Divider(
                                                        color: const Color(0xff982877),
                                                        thickness: 0.8,
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      height:
                                                          MediaQuery.of(context).size.height *
                                                              0.02,
                                                    ),
                                                    //Sun
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment.spaceBetween,
                                                      children: [
                                                        Row(
                                                          children: [
                                                            Image.asset(
                                                              "images/clock.png",
                                                              width: 20,
                                                            ),
                                                            SizedBox(
                                                              width: MediaQuery.of(context)
                                                                      .size
                                                                      .width *
                                                                  0.02,
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
                                                            sun
                                                                ? Text(
                                                                    sunstarttime +
                                                                        "  to   " +
                                                                        sunendtime,
                                                                    style: TextStyle(
                                                                      height: 1.5,
                                                                      fontSize: 14.0,
                                                                      fontWeight:
                                                                          FontWeight.w400,
                                                                    ),
                                                                  )
                                                                : Text(
                                                                    "Closed",
                                                                    style: TextStyle(
                                                                      height: 1.5,
                                                                      fontSize: 14.0,
                                                                      fontWeight:
                                                                          FontWeight.w400,
                                                                    ),
                                                                  ),
                                                            SizedBox(
                                                              width: MediaQuery.of(context)
                                                                      .size
                                                                      .width *
                                                                  0.02,
                                                            ),
                                                            !sun
                                                                ? Image.asset(
                                                                    "images/Group.png",
                                                                    width: 20,
                                                                  )
                                                                : GestureDetector(
                                                                    onTap: () {
                                                                      print("pen clicked");
                                                                      showTimeRangePicker(
                                                                        context: context,
                                                                        start: TimeOfDay(
                                                                            hour: 22,
                                                                            minute: 9),
                                                                        onStartChange: (start) {
                                                                          setState(() {
                                                                            sunstarttime = start
                                                                                    .hour
                                                                                    .toString() +
                                                                                " : " +
                                                                                start.minute
                                                                                    .toString();
                                                                          });
                
                                                                          print(
                                                                              "start time is" +
                                                                                  sunstarttime);
                                                                        },
                                                                        onEndChange: (end) {
                                                                          setState(() {
                                                                            sunendtime = end
                                                                                    .hour
                                                                                    .toString() +
                                                                                " : " +
                                                                                end.minute
                                                                                    .toString();
                                                                          });
                
                                                                          print("end time " +
                                                                              sunendtime);
                                                                        },
                                                                        interval: Duration(
                                                                            minutes: 01),
                                                                        use24HourFormat: false,
                                                                        padding: 30,
                                                                        strokeWidth: 20,
                                                                        handlerRadius: 14,
                                                                        strokeColor:
                                                                            Colors.orange,
                                                                        handlerColor:
                                                                            Colors.orange[700],
                                                                        selectedColor:
                                                                            Colors.amber,
                                                                        backgroundColor: Colors
                                                                            .black
                                                                            .withOpacity(0.3),
                                                                        ticks: 12,
                                                                        ticksColor:
                                                                            Colors.white,
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
                                                                        ]
                                                                            .asMap()
                                                                            .entries
                                                                            .map((e) {
                                                                          return ClockLabel
                                                                              .fromIndex(
                                                                                  idx: e.key,
                                                                                  length: 8,
                                                                                  text:
                                                                                      e.value);
                                                                        }).toList(),
                                                                        labelOffset: -30,
                                                                        labelStyle: TextStyle(
                                                                            fontSize: 22,
                                                                            color: Colors.grey,
                                                                            fontWeight:
                                                                                FontWeight
                                                                                    .bold),
                                                                        timeTextStyle:
                                                                            TextStyle(
                                                                                color: Colors
                                                                                        .orange[
                                                                                    700],
                                                                                fontSize: 24,
                                                                                fontStyle:
                                                                                    FontStyle
                                                                                        .italic,
                                                                                fontWeight:
                                                                                    FontWeight
                                                                                        .bold),
                                                                        activeTimeTextStyle:
                                                                            TextStyle(
                                                                                color: Colors
                                                                                    .orange,
                                                                                fontSize: 26,
                                                                                fontStyle:
                                                                                    FontStyle
                                                                                        .italic,
                                                                                fontWeight:
                                                                                    FontWeight
                                                                                        .bold),
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
                                                      height:
                                                          MediaQuery.of(context).size.height *
                                                              0.02,
                                                      width: MediaQuery.of(context).size.width *
                                                          0.75,
                                                      child: Divider(
                                                        color: const Color(0xff982877),
                                                        thickness: 0.8,
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      height:
                                                          MediaQuery.of(context).size.height *
                                                              0.02,
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
                                              PinkButtons(
                                                Buttontext: "APPLY",
                                                TextColor: Colors.white,
                                                onpress: () async => {
                                            
                                  if (state.user.providerType == 'company')
                                    {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => staffScreen(
                                                  proiverid: state
                                                      .user.providerId
                                                      .toString(),
                                                )),
                                      )
                                    }
                                  else
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => AddServiceDetails(
                                              )),
                                    )
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              }),
        ),
      ),
    );
  }
}
