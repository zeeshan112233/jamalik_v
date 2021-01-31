import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:jamalik/APIs/getStaffApi.dart';
import 'package:jamalik/Ui/AddStaff.dart';
import 'package:jamalik/widgets/header_pink.dart';

import '../Buttons.dart';

class staffScreen extends StatefulWidget {
  staffScreen({this.proiverid});
  String proiverid;

  @override
  staffScreenState createState() => staffScreenState();
}

class staffScreenState extends State<staffScreen> {
  bool isloading = false;

  @override
  void initState() {
    super.initState();
    setState(() {
      isloading = true;
    });
    GetStaff().getstaff(providerid: widget.proiverid).then((value) => {
          if (value != null)
            {
              setState(() {
                isloading = false;
                staff = value;
              }),
              print(value),
              Fluttertoast.showToast(msg: 'All Staff here '),
            }
          else
            {
              setState(() {
                isloading = false;
              }),
              Fluttertoast.showToast(msg: 'No Staff in company ')
            },
          print(value.toString()),
        });
  }

  List<dynamic> staff = [];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Column(
            children: [
              header_pink(
                Back: "images/back.png",
                text: "CHOOSE STAFF",
              ),
              SizedBox(
                height: 15,
              ),
              staff.length == 0
                  ? Expanded(
                      child: Container(
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "NO STAFF YET! ",
                                  style: TextStyle(
                                    fontFamily: "DM Sans",
                                    color: Colors.pink[300],
                                    fontSize: 30.0,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                                Icon(
                                  Icons.details,
                                  color: Colors.pink[300],
                                  size:
                                      MediaQuery.of(context).size.height * 0.5,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(18.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      !isloading
                                          ? PinkButtons(
                                              TextColor: Colors.white,
                                              Buttontext: "ADD STAFF",
                                              onpress: () => {
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                      builder: (context) =>
                                                          AddStaff(),
                                                    ))
                                              },
                                            )
                                          : Container(
                                              child: Center(
                                                child:
                                                    CircularProgressIndicator(),
                                              ),
                                            ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          width: MediaQuery.of(context).size.width),
                    )
                  : Expanded(
                      child: Container(
                        child: ListView.builder(
                            itemCount: staff.length,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 5.0, horizontal: 18),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
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
                                          horizontal: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.03,
                                          vertical: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.02,
                                        ),
                                        child: Image.asset("images/make.png",width: MediaQuery.of(context).size.height*0.1,),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Column(
                                        children: [
                                          Text(
                                            staff[index]['FirstName'],
                                            style: TextStyle(fontSize: 25),
                                          ),
                                          Text(
                                            staff[index]['Email'],
                                            style: TextStyle(fontSize: 20),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            }),
                      ),
                    ),

                                                    Padding(
                                  padding: const EdgeInsets.all(18.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      !isloading
                                          ? PinkButtons(
                                              TextColor: Colors.white,
                                              Buttontext: "ADD NEW STAFF",
                                              onpress: () => {
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                      builder: (context) =>
                                                          AddStaff(),
                                                    ))
                                              },
                                            )
                                          : Container(
                                              child: Center(
                                                child:
                                                    CircularProgressIndicator(),
                                              ),
                                            ),
                                    ],
                                  ),
                                ),
            ],
          ),
        ),
      ),
    );
  }
}
