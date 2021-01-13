import 'package:flutter/material.dart';

class PayViaDebitCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenheight =
        MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;
    final screenwidth = MediaQuery.of(context).size.width;
    return Container(
      width: screenwidth,
      height: 80,
      decoration: BoxDecoration(
        borderRadius: new BorderRadius.all(
          Radius.circular(10.0),
        ),
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [Colors.purple[500], Colors.pink.shade300],
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: (30),
            backgroundColor: Colors.white,
            child: ClipRRect(
              child: Image.asset('images/NAPS.png'),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Text(
            "Pay via Debit Card",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          SizedBox(
            width: 50,
          ),
          Image.asset('images/forward.png'),
        ],
      ),
    );
  }
}

class PayViaCreditCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenheight =
        MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;
    final screenwidth = MediaQuery.of(context).size.width;
    return Container(
      width: screenwidth,
      height: 80,
      decoration: BoxDecoration(
        borderRadius: new BorderRadius.only(
          topLeft: const Radius.circular(10.0),
          topRight: const Radius.circular(10.0),
          bottomLeft: const Radius.circular(10.0),
          bottomRight: const Radius.circular(10.0),
        ),
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [Colors.purple[500], Colors.pink.shade300],
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: (30),
            backgroundColor: Colors.white,
            child: ClipRRect(
              child: Image.asset('images/IntersectionCircle.png'),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Text(
            "Pay via Credit Card",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          SizedBox(
            width: 50,
          ),
          Image.asset('images/forward.png'),
        ],
      ),
    );
  }
}
