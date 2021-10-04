import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:svagatam_mysore/user.dart';
import 'dart:async';
import 'dashboard.dart';

class SplashScreen extends StatefulWidget {
  static const String id = "Splash Screen";

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  double _width = 0;
  double _height = 0;
  bool flag = false;
  int count = 0;
  Timer x;
  Color c = Color.fromRGBO(184, 54, 66, 1);

  change() {
    if (count == 6) {
      x.cancel();
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => UserQuery()));
    }
    setState(() {
      _width = flag ? MediaQuery
          .of(context)
          .size
          .width / 3 : 0;
      _height = flag ? MediaQuery
          .of(context)
          .size
          .height / 3 : 0;
      flag = flag ? false : true;
      count = count + 1;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    x = Timer.periodic(Duration(seconds: 2), (timer) {
      change();
      print(count);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ColorFiltered(
            colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.7), BlendMode.darken),
            child: Image(
              image: AssetImage('assets/images/mysore_tourism.jpeg'),
              width: MediaQuery
                  .of(context)
                  .size
                  .width,
              height: MediaQuery
                  .of(context)
                  .size
                  .height,
              fit: BoxFit.cover,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Hero(
                tag: "HERO",
                child: AnimatedContainer(
                  curve: Curves.ease,
                  width: _width,
                  height: _height,
                  decoration: BoxDecoration(
//          borderRadius: Border,
                      image: DecorationImage(
                          image: AssetImage("assets/images/logo.png"))),
                  duration: Duration(seconds: 2),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: MediaQuery.of(context).size.height/3),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [

                    Text(
                      'Mysuru',
                      style: TextStyle(
                          fontSize: 60,
                          color: Colors.white,
                          fontFamily: 'KaushanScript'),
                    ),

                    Center(
                      child: Container(
                        height: MediaQuery
                            .of(context)
                            .size
                            .height / 22,
                        width: MediaQuery
                            .of(context)
                            .size
                            .width / 1.5,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              'One city. Many Worlds...',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                                fontFamily: 'Inconsolata',
                              ),
                            ),
                            //new Divider(color: Colors.white,),
                          ],
                        ),
                      ),
                    ),
                    /*
                    Center(
                      child: Container(
                          width: MediaQuery
                              .of(context)
                              .size
                              .width / 1.5,
                          child: Text(
                            'Department of Tourism',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Colors.white,
                              fontFamily: 'Inconsolata',
                            ),
                          ),
                      ),
                    )

                     */
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
