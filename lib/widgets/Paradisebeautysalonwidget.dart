import 'package:flutter/material.dart';

class ParadiseBeauty extends StatelessWidget {
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
                        color: Colors.pink[300],
                        fontFamily: "DM Sans",
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold),
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
                      color: Colors.pink[300],
                      fontFamily: "DM Sans",
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.05,
              ),
              Text(
                "30 min",
                style: TextStyle(
                    color: Colors.pink[300],
                    fontFamily: "DM Sans",
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.08,
              ),
              Text(
                "120\$",
                style: TextStyle(
                    color: Colors.pink[300],
                    fontFamily: "DM Sans",
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          //2nd row
          Row(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.12,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.4,
                child: Text(
                  "Hair Colors",
                  style: TextStyle(
                      color: Colors.pink[300],
                      fontFamily: "DM Sans",
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.05,
              ),
              Text(
                "30 min",
                style: TextStyle(
                    color: Colors.pink[300],
                    fontFamily: "DM Sans",
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.08,
              ),
              Text(
                "120\$",
                style: TextStyle(
                    color: Colors.pink[300],
                    fontFamily: "DM Sans",
                    fontWeight: FontWeight.bold),
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
                  "Styling/Hairstyles",
                  style: TextStyle(
                      color: Colors.pink[300],
                      fontFamily: "DM Sans",
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.05,
              ),
              Text(
                "30 min",
                style: TextStyle(
                    color: Colors.pink[300],
                    fontFamily: "DM Sans",
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.08,
              ),
              Text(
                "120\$",
                style: TextStyle(
                    color: Colors.pink[300],
                    fontFamily: "DM Sans",
                    fontWeight: FontWeight.bold),
              ),
            ],
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
