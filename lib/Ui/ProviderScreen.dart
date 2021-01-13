import 'package:flutter/material.dart';
import 'package:jamalik/widgets/companycard.dart';
import 'package:jamalik/widgets/dotcard.dart';
import 'package:jamalik/widgets/header_pink.dart';
import 'package:jamalik/widgets/header_white.dart';
import 'package:jamalik/widgets/TF.dart';

class ProviderScreen extends StatefulWidget {
  @override
  ProviderScreenState createState() => ProviderScreenState();
}

class ProviderScreenState extends State<ProviderScreen> {
  String text = "Hair Cut";
  String image = "images/makeup.png";

  var providers = [
    {
      'mainimage': "images/private1.jpeg",
      'companylogo': "images/logo.png",
      'category': "Rani",
      'companycategory': "Hair Styler",
      'companyname': "Raji Beauty Parlor",
      'starimage': "images/star.png",
      'ratings': "(262)",
      'heartimage': "images/heart.png",
      'shareimage': "images/share.png",
    },
    {
      'mainimage': "images/private2.jpeg",
      'companylogo': "images/logo.png",
      'category': "Paradise",
      'companycategory': "Beauty Saloon",
      'companyname': "Raji Beauty Saloon",
      'starimage': "images/star.png",
      'ratings': "(302)",
      'heartimage': "images/heart.png",
      'shareimage': "images/share.png",
    },
  ];

  bool Private = true;
  bool Company = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Column(
            children: [
              header_pink(
                Back: "images/back.png",
                text: "Providers",
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Container(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        FlatButton(
                          padding: EdgeInsets.symmetric(
                              vertical: 5.0, horizontal: 1),
                          onPressed: () => {
                            setState(() {
                              Private = true;
                              Company = false;
                              providers = [
                                {
                                  'mainimage': "images/private1.jpeg",
                                  'companylogo': "images/logo.png",
                                  'category': "Rani",
                                  'companycategory': "Hair Styler",
                                  'companyname': "Raji Beauty Parlor",
                                  'starimage': "images/star.png",
                                  'ratings': "(262)",
                                  'heartimage': "images/heart.png",
                                  'shareimage': "images/share.png",
                                },
                                {
                                  'mainimage': "images/private2.jpeg",
                                  'companylogo': "images/logo.png",
                                  'category': "Paradise",
                                  'companycategory': "Beauty Saloon",
                                  'companyname': "Raji Beauty Saloon",
                                  'starimage': "images/star.png",
                                  'ratings': "(302)",
                                  'heartimage': "images/heart.png",
                                  'shareimage': "images/share.png",
                                },
                              ];
                            })
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: const Color(0xff982877),
                              ),
                              borderRadius: BorderRadius.all(Radius.circular(
                                      50.0) //                 <--- border radius here
                                  ),
                            ),
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 8, horizontal: 30.0),
                              decoration: ShapeDecoration(
                                shape: StadiumBorder(),
                                gradient: Private
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
                              ),
                              child: Row(
                                children: [
                                  Private
                                      ? Image.asset("images/beautybtnwhite.png")
                                      : Image.asset("images/beautybtnpink.png"),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.05,
                                  ),
                                  Text(
                                    "Private",
                                    style: Private
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
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        //.......................................Button2..................................................
                        FlatButton(
                          padding: EdgeInsets.symmetric(
                              vertical: 5.0, horizontal: 1),
                          onPressed: () => {
                            setState(() {
                              Private = false;
                              Company = true;
                              providers = [
                                {
                                  'mainimage': "images/company2.jpeg",
                                  'companylogo': "images/logo.png",
                                  'category': "Paradise",
                                  'companycategory': "Beauty Saloon",
                                  'companyname': "Raji Beauty Parlor",
                                  'starimage': "images/star.png",
                                  'ratings': "(262)",
                                  'heartimage': "images/heart.png",
                                  'shareimage': "images/share.png",
                                },
                                {
                                  'mainimage': "images/company2.jpeg",
                                  'companylogo': "images/logo.png",
                                  'category': "Cosmetica",
                                  'companycategory': "Beauty Saloon and SPA",
                                  'companyname': "HWI",
                                  'starimage': "images/star.png",
                                  'ratings': "(302)",
                                  'heartimage': "images/heart.png",
                                  'shareimage': "images/share.png",
                                }
                              ];
                            })
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: const Color(0xff982877),
                              ),
                              borderRadius: BorderRadius.all(Radius.circular(
                                      50.0) //                 <--- border radius here
                                  ),
                            ),
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 8, horizontal: 30.0),
                              decoration: ShapeDecoration(
                                shape: StadiumBorder(),
                                gradient: Company
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
                              ),
                              child: Row(
                                children: [
                                  Company
                                      ? Image.asset("images/healthbtnwhite.png")
                                      : Image.asset("images/healthbtnpink.png"),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.05,
                                  ),
                                  Text(
                                    "Company ",
                                    style: Company
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
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Expanded(
                child: Container(
                  child: ListView.builder(
                      itemCount: providers.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 6.0),
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                companycard(
                                  mainimage: providers[index]['mainimage'],
                                  companylogo: providers[index]['companylogo'],
                                  category: providers[index]['category'],
                                  companycategory: providers[index]
                                      ['companycategory'],
                                  companyname: providers[index]['companyname'],
                                  //      starimage: providers[index]['mainimage'],
                                  ratings: providers[index]['ratings'],
                                ),
                              ],
                            ),
                          ),
                        );
                      }),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
