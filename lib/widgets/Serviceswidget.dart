import 'package:flutter/material.dart';

class Services extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.30,
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              //1st row
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * 0.05),
                    child: CircleAvatar(
                      radius: (20),
                      backgroundImage: AssetImage('images/fathima.png'),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.05,
                  ),
                  Text(
                    "Fathima",
                    style: TextStyle(
                      color: const Color(0xff982877),
                      fontFamily: "DM Sans",
                      fontSize: 14.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.04,
          ),
          Row(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.12,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.4,
                child: Text(
                  "Hair cut",
                  style: TextStyle(
                    color: const Color(0xff982877),
                      fontFamily: "DM Sans",
                      fontSize: 14.0,
                      fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.05,
              ),
              Text(
                "30 min",
                style: TextStyle(
                  color: const Color(0xff982877),
                      fontFamily: "DM Sans",
                      fontSize: 14.0,
                      fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.08,
              ),
              Text(
                "120\$",
                style: TextStyle(
                  color: const Color(0xff982877),
                      fontFamily: "DM Sans",
                      fontSize: 14.0,
                      fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          //2nd Row
          Row(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.12,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.4,
                child: Text(
                  "01 January 2021",
                  style: TextStyle(
                   color: const Color(0xff982877),
                      fontFamily: "DM Sans",
                      fontSize: 14.0,
                      fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          //3rd Row
          Row(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.12,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.4,
                child: Text(
                  "11:00",
                  style: TextStyle(
                    color: const Color(0xff982877),
                      fontFamily: "DM Sans",
                      fontSize: 14.0,
                      fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.14,
              ),
              Container(
                child: Text(
                  "InProgress",
                  style: TextStyle(
                    color: const Color(0xff982877),
                      fontFamily: "DM Sans",
                      fontSize: 14.0,
                      fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
            width: MediaQuery.of(context).size.width * 0.90,
            child: Divider(
              color: Colors.pink[300],
            ),
          ),
        ],
      ),
    );
  }
}
