import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
class Symbol extends StatelessWidget {
  const Symbol({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          // child: new Image.asset('asset/images/heart.png'),
          child: Icon(CupertinoIcons.heart_fill),
          alignment: Alignment.center,
        )
      ],
    );
  }
}