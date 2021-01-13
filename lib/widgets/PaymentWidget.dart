import 'package:flutter/material.dart';
import 'package:jamalik/widgets/ButtonsWidget.dart';
import 'package:touchable_opacity/touchable_opacity.dart';

class PaymentDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.55,
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  //1st row
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width * 0.1),
                        child: CircleAvatar(
                          radius: (20),
                          backgroundImage: AssetImage('images/fathima.png'),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.05,
                      ),
                      Text(
                        "Rani",
                        style: TextStyle(
                          color: Colors.pink,
                          fontFamily: "DM Sans",
                          fontSize: 14.0,
                          fontWeight: FontWeight.w700,
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
                    width: MediaQuery.of(context).size.width * 0.18,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.4,
                    child: Text(
                      "Hair cut",
                      style: TextStyle(
                        color: Colors.pink,
                        fontFamily: "DM Sans",
                        fontSize: 14.0,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.05,
                  ),
                  Text(
                    "30 Min",
                    style: TextStyle(
                      color: Colors.pink,
                      fontFamily: "DM Sans",
                      fontSize: 14.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.08,
                  ),
                  Text(
                    "120\$",
                    style: TextStyle(
                      color: Colors.pink,
                      fontFamily: "DM Sans",
                      fontSize: 14.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              //2nd Row
              Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.18,
                  ),
                  Container(
                    //Container Size
                    width: MediaQuery.of(context).size.width * 0.4,
                    child: Text(
                      "10 January 2021",
                      style: TextStyle(
                        color: Colors.pink,
                        fontFamily: "DM Sans",
                        fontSize: 12.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              //Row 3
              Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.18,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.05,
                    width: MediaQuery.of(context).size.width * 0.75,
                    child: Divider(
                      color: const Color(0xff982877),
                      thickness: 0.8,
                    ),
                  ),
                ],
              ),
              //4 Row
              Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.66,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.12,
                    child: Text(
                      "Total",
                      style: TextStyle(
                        color: Colors.pink,
                        fontFamily: "DM Sans",
                        fontSize: 14.0,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.05,
                  ),
                  Text(
                    "120\$",
                    style: TextStyle(
                      color: Colors.pink,
                      fontFamily: "DM Sans",
                      fontSize: 14.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.18,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.4,
                    child: TouchableOpacity(
                      activeOpacity: 0.4,
                      onTap: () {
                        print("Add more services pressed");
                      },
                      child: Text(
                        "Add more services",
                        style: TextStyle(
                          color: const Color(0xff982877),
                          fontFamily: "DM Sans",
                          fontSize: 12.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              //Coupon Row
              Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.18,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.4,
                    child: TouchableOpacity(
                      activeOpacity: 0.4,
                      onTap: () {
                        print("Coupon pressed");
                      },
                      child: Text(
                        "Coupon",
                        style: TextStyle(
                          color: const Color(0xff982877),
                          fontFamily: "DM Sans",
                          fontSize: 12.0,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.1,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.25,
                    child: TouchableOpacity(
                      activeOpacity: 0.4,
                      onTap: () {
                        print("Apply Coupon pressed");
                      },
                      child: Text(
                        "Apply Coupon",
                        style: TextStyle(
                          color: const Color(0xff982877),
                          fontFamily: "DM Sans",
                          fontSize: 12.0,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.45,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.3,
                    child: Text(
                      "Total",
                      style: TextStyle(
                        color: Colors.pink,
                        fontFamily: "DM Sans",
                        fontSize: 14.0,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.07,
                  ),
                  Text(
                    "120\$",
                    style: TextStyle(
                      color: Colors.pink,
                      fontFamily: "DM Sans",
                      fontSize: 14.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              //Coupon Discount
              Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.45,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.3,
                    child: Text(
                      "Coupon Discount",
                      style: TextStyle(
                        color: Colors.pink,
                        fontFamily: "DM Sans",
                        fontSize: 14.0,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.07,
                  ),
                  Text(
                    "120\$",
                    style: TextStyle(
                      color: Colors.pink,
                      fontFamily: "DM Sans",
                      fontSize: 14.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),

              //Total Payable
              Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.45,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.3,
                    child: Text(
                      "Total Payable",
                      style: TextStyle(
                        color: Colors.pink,
                        fontFamily: "DM Sans",
                        fontSize: 14.0,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.07,
                  ),
                  Text(
                    "120\$",
                    style: TextStyle(
                      color: Colors.pink,
                      fontFamily: "DM Sans",
                      fontSize: 14.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.03,
        ),
        Padding(
          padding:
              EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TouchableOpacity(
                activeOpacity: 0.4,
                onTap: () {
                  print("Add more services");
                },
                child: Text(
                  "Add more services",
                  style: TextStyle(
                    color: const Color(0xff982877),
                    fontFamily: "DM Sans",
                    fontSize: 14.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.7,
                height: 100,
                color: Color(0xffDFE5ED),
                child: Padding(
                  padding: const EdgeInsets.all(28.0),
                  child: TextField(
                    autofocus: false,
                    style: TextStyle(fontSize: 10.0, color: Color(0xff982877)),
                    decoration: InputDecoration(
                      hintText: 'Any Special Requests',
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(25.7),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
