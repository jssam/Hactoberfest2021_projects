import 'package:flutter/material.dart';


class FollowDetails extends StatelessWidget {
  final number;
  final text;
  // final following;

  const FollowDetails({this.number,this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          number.toString(),
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            // color: textColor,
          ),
        ),

        Text(
          text.toString(),
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            // color: textColor,
          ),
        )

      ],
    );
  }
}