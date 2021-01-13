import 'package:flutter/material.dart';
import 'package:jamalik/widgets/companycard.dart';
import 'package:jamalik/widgets/dotcard.dart';
import 'package:jamalik/widgets/header_pink.dart';
import 'package:jamalik/widgets/header_white.dart';
import 'package:jamalik/widgets/TF.dart';

class Favourite extends StatefulWidget {
  @override
  FavouriteState createState() => FavouriteState();
}

class FavouriteState extends State<Favourite> {
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
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Column(
            children: [
              header_pink(
                Back: "images/back.png",
                text: "Favourites",
              ),
              SizedBox(
                height: 15,
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
