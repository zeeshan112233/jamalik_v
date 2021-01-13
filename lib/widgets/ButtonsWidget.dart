import 'package:flutter/material.dart';
import 'package:jamalik/Ui/MyServices1.dart';

class CreateAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FlatButton(
        color: Colors.grey[200],
        textColor: Colors.black87,
        padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 50),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        onPressed: () {},
        child: Text(
          "Create an account",
          style: TextStyle(
            fontSize: 16.0,
          ),
        ),
      ),
    );
  }
}

class SignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FlatButton(
        color: Colors.grey[200],
        textColor: Colors.black87,
        padding: EdgeInsets.zero,
        shape: StadiumBorder(),
        onPressed: () {},
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 90.0),
          decoration: ShapeDecoration(
            shape: StadiumBorder(),
            gradient: LinearGradient(
              colors: [
                Colors.purple[500],
                Colors.amber[500],
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Text(
            "SIGN IN",
            style: TextStyle(
              fontSize: 16.0,
            ),
          ),
        ),
      ),
    );
  }
}

class Schedule extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Expanded(
        child: FlatButton(
          color: Colors.grey[200],
          textColor: Colors.black87,
          onPressed: () {},
          child: Container(
            width: 380,
            height: 215,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.purple.shade500,
                  Colors.pink.shade200,
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: Center(
              child: Text(
                "Schedule",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class BookNow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: Expanded(
        child: FlatButton(
          color: Colors.grey[200],
          textColor: Colors.black87,
          onPressed: () => {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MyServices1()),
            )
          },
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.purple.shade500,
                  Colors.pink.shade200,
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: Center(
              child: Text(
                "Book Now",
                style: TextStyle(fontSize: 16.0, color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class MyAppointments extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FlatButton(
        textColor: Colors.black87,
        padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 16),
        shape: RoundedRectangleBorder(
          side: BorderSide(
              color: const Color(0xff982877),
              width: 1,
              style: BorderStyle.solid),
          borderRadius: BorderRadius.circular(50.0),
        ),
        onPressed: () {},
        child: Text(
          "My Appointments",
          style: TextStyle(
            color: const Color(0xff982877),
            fontFamily: "DM Sans",
            fontSize: 14.0,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}

class CompletedServices extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FlatButton(
        padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 16),
        shape: RoundedRectangleBorder(
          side: BorderSide(
              color: const Color(0xff982877),
              width: 1,
              style: BorderStyle.solid),
          borderRadius: BorderRadius.circular(50.0),
        ),
        onPressed: () {},
        child: Text(
          "Completed Services",
          style: TextStyle(
            color: const Color(0xff982877),
            fontFamily: "DM Sans",
            fontSize: 14.0,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
