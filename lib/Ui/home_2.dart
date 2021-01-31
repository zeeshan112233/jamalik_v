import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:jamalik/Ui/AddServiceDetails.dart';
import 'package:jamalik/Ui/FAQ.dart';
import 'package:jamalik/Ui/Profile.dart';
import 'package:jamalik/Ui/dashboard.dart';
import 'package:jamalik/Ui/login.dart';
import 'package:jamalik/Ui/notification.dart';
import 'package:jamalik/redux/model/app_state.dart';
import 'package:jamalik/widgets/dotcard.dart';
import 'package:jamalik/widgets/header_white.dart';
import 'package:jamalik/widgets/TF.dart';
import 'package:jamalik/widgets/NavDrawer.dart';
import 'package:touchable_opacity/touchable_opacity.dart';

class home_2 extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<home_2> {
  int _cIndex = 0;

  void _incrementTab(index) {
    setState(() {
      _cIndex = index;
    });
  }

  bool pending = true;
  bool completed = false;
  var pendingarray = [
    "Booking at 11 PM TODAY",
    "Booking at 3 PM TUESDAY",
    "Booking at 1 PM FRIDAY ",
    "Booking at 2 PM SATURDAY"
  ];
  var completedarray = [
    "Mr. Khan's Booking Complete",
    "Abdul Wahid's Booking Completed ",
    "Salman's Booking Completed ",
    "Zeeshan's Booking Completed "
  ];
  int penarraylength = 0;
  int comarraylength = 0;

  @override
  Widget build(BuildContext context) {
    final screenheight =
        MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;
    final screenwidth = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Scaffold(
          backgroundColor: Colors.white,
          drawer: NavDrawer(
            dp: "images/company2.jpeg",
            name: "Jamalik",
          ),
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(screenheight * 0.06),
            child: AppBar(
                title: Center(
                  child: StoreConnector<Appstate, Appstate>(
                      converter: (store) => store.state,
                      builder: (context, state) {
                        return Text(
                          "Welcome " + state.user.firstName,
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.w800),
                        );
                      }),
                ),
                leading: Builder(
                  builder: (BuildContext context) {
                    return IconButton(
                      icon: new Image.asset('images/menuu.png'),
                      onPressed: () {
                        Scaffold.of(context).openDrawer();
                      },
                      tooltip: MaterialLocalizations.of(context)
                          .openAppDrawerTooltip,
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
          ),
          body: _cIndex == 0
              ? Container(
                  height: screenheight - kToolbarHeight,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * 0.07,
                      vertical: MediaQuery.of(context).size.width * 0.08,
                    ),
                    child: Column(
                      children: [
                        Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  /////////////////////////
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: [
                                        Colors.purple.shade300,
                                        Colors.pink.shade200,
                                      ],
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                    ),
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.green,
                                    boxShadow: [],
                                  ),
                                  height: 80,
                                  width: 140,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.access_alarm,
                                            color: Colors.white,
                                            size: 30.0,
                                          ),
                                          SizedBox(width: 5),
                                          Text(
                                            "Sales Today",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "QAR 300",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                //weekly
                                Container(
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: [
                                        Colors.purple.shade300,
                                        Colors.pink.shade200,
                                      ],
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                    ),
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.green,
                                    boxShadow: [],
                                  ),
                                  height: 80,
                                  width: 140,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.alarm_on,
                                            color: Colors.white,
                                            size: 30.0,
                                          ),
                                          SizedBox(width: 5),
                                          Text(
                                            "Weekly Sales",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "QAR 300",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.width * 0.05,
                            ),
                            //Monthly
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: [
                                        Colors.purple.shade300,
                                        Colors.pink.shade200,
                                      ],
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                    ),
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.green,
                                    boxShadow: [],
                                  ),
                                  height: 80,
                                  width: 140,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.addchart_rounded,
                                            color: Colors.white,
                                            size: 30.0,
                                          ),
                                          SizedBox(width: 5),
                                          Text(
                                            "Monthly Sales",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "QAR 300",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: [
                                        Colors.purple.shade300,
                                        Colors.pink.shade200,
                                      ],
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                    ),
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.green,
                                    boxShadow: [],
                                  ),
                                  height: 80,
                                  width: 140,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.access_alarm,
                                            color: Colors.white,
                                            size: 30.0,
                                          ),
                                          SizedBox(width: 5),
                                          Text(
                                            "Daily Sales",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "QAR 300",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.05,
                        ),
                        Expanded(
                          child: Container(
                            // height: MediaQuery.of(context).size.height*0.4,
                            //color: Colors.grey[100],
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Bookings',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 10,
                                    vertical: 25,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      FlatButton(
                                        padding: EdgeInsets.symmetric(
                                            vertical: 3.0, horizontal: 1),
                                        onPressed: () => {
                                          setState(() {
                                            pending = true;
                                            completed = false;
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
                                                vertical: 4, horizontal: 15.0),
                                            decoration: ShapeDecoration(
                                              shape: StadiumBorder(),
                                              gradient: pending
                                                  ? LinearGradient(
                                                      colors: [
                                                        Colors.purple.shade500,
                                                        Colors.pink.shade200,
                                                      ],
                                                      begin:
                                                          Alignment.topCenter,
                                                      end: Alignment
                                                          .bottomCenter,
                                                    )
                                                  : LinearGradient(
                                                      colors: [
                                                        Colors.white,
                                                        Colors.white,
                                                      ],
                                                      begin:
                                                          Alignment.topCenter,
                                                      end: Alignment
                                                          .bottomCenter,
                                                    ),
                                            ),
                                            child: Row(
                                              children: [
                                                pending
                                                    ? Image.asset(
                                                        "images/beautybtnwhite.png")
                                                    : Image.asset(
                                                        "images/beautybtnpink.png"),
                                                SizedBox(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.05,
                                                ),
                                                Text(
                                                  "pending",
                                                  style: pending
                                                      ? TextStyle(
                                                          color: Colors.white,
                                                          fontFamily: "DM Sans",
                                                          fontSize: 14.0,
                                                          fontWeight:
                                                              FontWeight.w400)
                                                      : TextStyle(
                                                          color: Colors.black,
                                                          fontFamily: "DM Sans",
                                                          fontSize: 14.0,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                        ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      FlatButton(
                                        padding: EdgeInsets.symmetric(
                                            vertical: 3.0, horizontal: 1),
                                        onPressed: () => {
                                          setState(
                                            () {
                                              pending = false;
                                              completed = true;
                                            },
                                          ),
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
                                                vertical: 4, horizontal: 15.0),
                                            decoration: ShapeDecoration(
                                              shape: StadiumBorder(),
                                              gradient: completed
                                                  ? LinearGradient(
                                                      colors: [
                                                        Colors.purple.shade500,
                                                        Colors.pink.shade200,
                                                      ],
                                                      begin:
                                                          Alignment.topCenter,
                                                      end: Alignment
                                                          .bottomCenter,
                                                    )
                                                  : LinearGradient(
                                                      colors: [
                                                        Colors.white,
                                                        Colors.white,
                                                      ],
                                                      begin:
                                                          Alignment.topCenter,
                                                      end: Alignment
                                                          .bottomCenter,
                                                    ),
                                            ),
                                            child: Row(
                                              children: [
                                                completed
                                                    ? Image.asset(
                                                        "images/beautybtnwhite.png")
                                                    : Image.asset(
                                                        "images/beautybtnpink.png"),
                                                SizedBox(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.05,
                                                ),
                                                Text(
                                                  "Completed",
                                                  style: completed
                                                      ? TextStyle(
                                                          color: Colors.white,
                                                          fontFamily: "DM Sans",
                                                          fontSize: 14.0,
                                                          fontWeight:
                                                              FontWeight.w400)
                                                      : TextStyle(
                                                          color: Colors.black,
                                                          fontFamily: "DM Sans",
                                                          fontSize: 14.0,
                                                          fontWeight:
                                                              FontWeight.w400,
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
                                pending
                                    ? Expanded(
                                        child: Container(
                                          //height: ,
                                          //color: Colors.amber,
                                          child: ListView.builder(
                                            itemCount: completedarray.length,
                                            itemBuilder: (context, index) {
                                              return Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                  horizontal: 20,
                                                  vertical: 10,
                                                ),
                                                child: Row(
                                                  children: [
                                                    Icon(
                                                      Icons.access_alarm,
                                                      color: Colors.red,
                                                      size: 30.0,
                                                    ),
                                                    SizedBox(
                                                      width: 10,
                                                    ),
                                                    Expanded(
                                                        child: Container(
                                                      child: Text(
                                                          pendingarray[index]),
                                                    )),
                                                  ],
                                                ),
                                              );
                                            },
                                          ),
                                        ),
                                      )
                                    : Expanded(
                                        child: Container(
                                          //height: 30,
                                          //color: Colors.amber,
                                          child: ListView.builder(
                                            itemCount: completedarray.length,
                                            itemBuilder: (context, index) {
                                              return Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                  horizontal: 20,
                                                  vertical: 10,
                                                ),
                                                child: Row(
                                                  children: [
                                                    Icon(
                                                      Icons
                                                          .assignment_turned_in_outlined,
                                                      color: Colors.green,
                                                      size: 30.0,
                                                    ),
                                                    SizedBox(
                                                      width: 10,
                                                    ),
                                                    Expanded(
                                                      child: Container(
                                                        child: Text(
                                                            completedarray[
                                                                index]),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              );
                                            },
                                          ),
                                        ),
                                      )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              : Faq(),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: _cIndex,
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.purpleAccent,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.purple,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home, color: Colors.white),
                  title: new Text(
                    'Home',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  )),
              BottomNavigationBarItem(
                  icon: Icon(Icons.supervised_user_circle, color: Colors.white),
                  title: new Text(
                    'F.A.Q',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ))
            ],
            onTap: (index) {
              _incrementTab(index);
            },
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          floatingActionButton: new FloatingActionButton(
            backgroundColor: Colors.pink[300],
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => dashboard(),
                  ));
            },
            tooltip: 'Increment',
            child: new Icon(Icons.add),
          ),
        ),
      ),
    );
  }
}
// Icons.assignment_turned_in_outlined,
//                                                 color: Colors.green,
