import 'package:flutter/material.dart';

class companycard extends StatelessWidget {
  companycard({
    this.mainbackgroungimage,
    this.companylogo,
    this.category,
    this.companycategory,
    this.companyname,
    this.starimage,
    this.ratings,
    this.mainimage,
  });

  final String mainbackgroungimage;
  final String companylogo;
  final String category;
  final String companycategory;
  final String companyname;
  final String starimage;
  final String ratings;
  final String mainimage;

  @override
  Widget build(BuildContext context) {
    final screenheight =
        MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;
    final screenwidth = MediaQuery.of(context).size.width;
    return Stack(children: [
      Container(
        height: screenheight * 0.28,
        width: screenwidth - 30,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.purple[500], Colors.pink.shade300]),
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(18.0),
          child: Image.asset(
            mainimage,
            fit: BoxFit.cover,
          ),
        ),
      ),
      Positioned(
        top: screenheight * 0.02,
        left: 20,
        child: new Container(
            child: new Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            new Image.asset(
              companylogo,
              width: 50,
              height: 50,
            ),
            SizedBox(height: 5),
            new Text(
              category,
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 15, color: Colors.white),
            ),
            SizedBox(height: 1),
            new Text(
              companycategory,
              textAlign: TextAlign.right,
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
            SizedBox(height: 1),
            new Text(
              companyname,
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5),
          ],
        )),
      ),
      Positioned(
        top: 150,
        left: 20,
        child: new Container(
          margin: EdgeInsets.all(10.0),
          child: new Row(children: [
            Row(
              children: List.generate(5, (Null) {
                return new Icon(
                  Icons.star,
                  color: (Colors.white),
                );
              }),
            ),

            SizedBox(width: 10),

            Text(
              ratings,
              style: TextStyle(fontSize: 15, color: Colors.white),
            ),

            //space between button and rating
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.10,
            ),
            RaisedButton(
              onPressed: () => print("hey "),
              shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(5)),
              color: Colors.white,
              textColor: Colors.purple.shade600,
              child: Text('Book', style: TextStyle(fontSize: 20)),
            ),
          ]),
        ),
      ),
      Positioned(
        right: 20,
        top: 35,
        child: new Container(
          margin: EdgeInsets.all(10.0),
          child: new Row(children: [
            GestureDetector(
              onTap: () => print("heart tapped"),
              child: Icon(
                Icons.auto_fix_high,
                color: Colors.white,
                size: 35,
              ),
            ),
            SizedBox(width: 10),
            GestureDetector(
              onTap: () => print("share tapped"),
              child: Icon(
                Icons.share,
                color: Colors.white,
                size: 35,
              ),
            ),
          ]),
        ),
      ),
    ]);
  }
}
