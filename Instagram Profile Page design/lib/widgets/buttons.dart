import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {

  final text;

  const Buttons({this.text });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: null,
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Color.fromRGBO(0, 153, 255, 0.5)),
            padding: MaterialStateProperty.all(EdgeInsets.all(10)),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))
              )
          ),
          child: Text(text,style: TextStyle(
            fontSize: 25,
            color: Color.fromRGBO(0, 0, 0, 1)
          ),),
          // style: style,
              ),
      ],
    );
  }
}