import 'package:flutter/material.dart';

class header_white extends StatelessWidget {
  header_white({
    this.prefixIcon,
    this.suffixIcon,
  });

  final String prefixIcon;
  final String suffixIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      // margin: EdgeInsets.only(left: 25, top: 30, right: 25, bottom: 0),
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () => print("Prefix tapped"),
            child: new Image.asset(
              prefixIcon,
              width: 40.0,
            ),
          ),
          GestureDetector(
            onTap: () => print("Suffix tapped"),
            child: new Image.asset(
              suffixIcon,
              width: 40.0,
            ),
          ),
        ],
      ),
    );
  }
}
