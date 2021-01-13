import 'package:flutter/material.dart';
import 'package:jamalik/widgets/header_pink.dart';

//New Class
class notification extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                child: header_pink(
                  Back: "images/back.png",
                  text: "Notification",
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Expanded(
                child: Container(
                  child: ListView.builder(
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal:
                                  MediaQuery.of(context).size.width * 0.10),
                          child: Column(
                            children: [
                              Text(
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis maximus feugiat leo. Duis nec vestibulum tortor. ",
                                style: TextStyle(
                                    height: 1.5,
                                    color: const Color(0xFF9B318B),
                                    fontFamily: "DM Sans",
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w400,
                                    ),
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.06,
                                width: MediaQuery.of(context).size.width * 0.75,
                                child: Divider(
                                  color: const Color(0xff982877),
                                  thickness: 0.8,
                                ),
                              ),
                            ],
                          ),
                        );
                      }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
