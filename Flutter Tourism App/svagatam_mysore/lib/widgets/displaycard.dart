import 'package:flutter/material.dart';

// ignore: must_be_immutable, camel_case_types
class homeCards extends StatelessWidget {
  homeCards({this.image, this.title,this.onTap});
  final String image;
  final String title;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: SizedBox(
        height: 250.0,
        child: GestureDetector(
          onTap: onTap,
          child: Container(
            height: 150,
            width: MediaQuery.of(context).size.width/1,
            decoration: BoxDecoration(

              borderRadius: BorderRadius.circular(20.0),
              color: Colors.white,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Hero(
                  tag: image,
                  child: ClipRRect(

                    borderRadius: BorderRadius.circular(20.0),
                    child: Image.asset(
                      image,
                      width: MediaQuery.of(context).size.width,
                      fit: BoxFit.cover,
                      height: 200.0,
                    ),
                  ),
                ),
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Text(
                        title,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.black,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}