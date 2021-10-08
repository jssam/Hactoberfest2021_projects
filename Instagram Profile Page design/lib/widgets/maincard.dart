// import 'package:chaitanya/widgets/image_container.dart';
// import 'dart:html';

import 'package:chaitanya/widgets/buttons.dart';
import 'package:chaitanya/widgets/follow_details.dart';
import 'package:chaitanya/widgets/symbol.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class MainCard extends StatelessWidget {
  const MainCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(45.0),
      height: 720,
      width: 450,
      decoration: BoxDecoration(boxShadow: [
        const BoxShadow(
          offset: Offset(3, 3),
          blurRadius: 3,
          spreadRadius: 2,
          color: Color.fromRGBO(0, 240, 232, 0.5),
        )
      ], borderRadius: BorderRadius.zero),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(10, 30, 10, 20),
            width: 400,
            height: 250,
            // color: Colors.blue,
            child: new Image.asset(
              'assets/images/face.jpg',
              alignment: Alignment.center,
            ),
          ),
          Container(
            padding: EdgeInsets.all(15),
            child: Text(
              'Chaitanya Landge',
              style: TextStyle(
                  // fontFamily: 'Aleo'
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  fontFamily: 'Roboto',
                  color: Color.fromARGB(0, 0, 0, 0)),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
            margin: EdgeInsets.only(left: 10, right: 10),
            decoration: BoxDecoration(boxShadow: [
              const BoxShadow(
                offset: Offset(3, 3),
                blurRadius: 1,
                spreadRadius: 1,
                color: Color.fromRGBO(0, 153, 255, 0.5),
              )
            ], borderRadius: BorderRadius.circular(7)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FollowDetails(
                  number: "9",
                  text: "Posts",
                ),
                FollowDetails(
                  number: "416",
                  text: "Followers",
                ),
                FollowDetails(
                  number: 600,
                  text: "Following",
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(20, 30, 130, 0),
            child: Text(
              "VIT Pune CSE'24...👨‍🎓",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(22, 5, 10, 10),
            child: Text(
              "I believe in making the impossible possible because there’s no fun in giving up...😁",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(30, 30, 20, 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Symbol(),
                Buttons(text: "Follow"),
                Buttons(text: "Message"),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 30, 160, 10),
            child: Text(
              "Learn More.....",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
