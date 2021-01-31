import 'package:flutter/material.dart';
import 'package:jamalik/widgets/header_pink.dart';

class question extends StatefulWidget {
  question({
    this.myquestion,
    this.myanswer,
  });

  final String myquestion;
  final String myanswer;
  bool onpress = false;

  @override
  _questionState createState() => _questionState();
}

class _questionState extends State<question> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        onTap: () {
          setState(() {
            widget.onpress = !widget.onpress;
          });
        },
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(10)),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 3,
                blurRadius: 7,
                offset: Offset(0, 2), // changes position of shadow
              ),
            ],
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.05,
              vertical: MediaQuery.of(context).size.height * 0.033,
            ),
            child: Column(
              children: [
                Text(
                  widget.myquestion,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                widget.onpress
                    ? Container(
                        width: 500,
                        child: Center(
                          child: Text(
                            widget.myanswer,
                            style: TextStyle(
                              color: Colors.grey[800],
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      )
                    : Container(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Faq extends StatefulWidget {
  @override
  _FaqState createState() => _FaqState();
}

class _FaqState extends State<Faq> {
  var myQuestions = [
    {
      "question": "What is VAO-Assistant?",
      "answer":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis maximus feugiat leo. Duis nec vestibulum tortor. Curabitur non felis sit amet risus feugiat sollicitudin in quis orci. Nam id est lectus. Nunc pellentesque vel risus ultrices posuere. Aenean dui urna, finibus ut augue a, euismod consequat erat. Nulla facilisi. Aliquam a erat purus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur eu arcu eu urna rhoncus lacinia id nec mauris. Donec dictum vehicula egestas. Proin molestie tempor augue, sit amet pharetra dui dapibus in.",
    },
    {
      "question": "Where can i see my appointments?",
      "answer":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis maximus feugiat leo. Duis nec vestibulum tortor. Curabitur non felis sit amet risus feugiat sollicitudin in quis orci. Nam id est lectus. Nunc pellentesque vel risus ultrices posuere. Aenean dui urna, finibus ut augue a, euismod consequat erat. Nulla facilisi. Aliquam a erat purus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur eu arcu eu urna rhoncus lacinia id nec mauris. Donec dictum vehicula egestas. Proin molestie tempor augue, sit amet pharetra dui dapibus in.",
    }
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            header_pink(
              Back: "images/back.png",
              text: "F.A.Q",
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Expanded(
              child: Container(
                child: ListView.builder(
                    itemCount: myQuestions.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 18),
                        child: question(
                          myquestion: myQuestions[index]["question"],
                          myanswer: myQuestions[index]["answer"],
                        ),
                      );
                    }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
