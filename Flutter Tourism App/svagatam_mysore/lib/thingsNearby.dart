import 'package:flutter/material.dart';


class ThingsNearby extends StatefulWidget {
  @override
  _ThingsNearbyState createState() => _ThingsNearbyState();
}

class _ThingsNearbyState extends State<ThingsNearby> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Things Nearby",style: TextStyle(fontWeight: FontWeight.bold),)),
      ),
      backgroundColor: Color.fromRGBO(184, 54, 66, 0.4).withOpacity(0.6),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 20, 8, 8),
              child: covidTips(image: "assets/images/palace.jpg",title: "Mysore Palace",subtitle: "7 Kms Away",),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 20, 8, 8),
              child: covidTips(image: "assets/images/welles.jpeg",title: "Wellesley Bridge",subtitle: "18 Kms Away",),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 20, 8, 8),
              child: covidTips(image: "assets/images/temple.jpg",title: "Sriranga Temple",subtitle: "30 Kms Away",),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 20, 8, 8),
              child: covidTips(image: "assets/images/tipupalace.jpeg",title: "Tipu Palace",subtitle: "32 Kms Away",),
            ),


            Padding(
              padding: const EdgeInsets.fromLTRB(8, 20, 8, 8),
              child: covidTips(image: "assets/images/mall.jpg",title: "Mysore Mall",subtitle: "39 Kms Away",),
            ),

          ],
        ),
      ),
    );
  }
}




class covidTips extends StatelessWidget {
  covidTips({this.image, this.title,this.subtitle});
  final String image;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: SizedBox(
        height: 156.0,
        child: Container(
          height: 150,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: Colors.white,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image.asset(
                  image,
                  width: 150.0,
                  fit: BoxFit.cover,
                  height: 150.0,
                ),
              ),
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: Text(
                          title,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.black,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      Center(
                        child: Text(
                          subtitle,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.black,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
class socialtips extends StatelessWidget {
  socialtips({this.image, this.title});
  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: SizedBox(
        height: 156.0,
        child: Container(
          height: 150,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: Colors.white,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
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
              ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image.asset(
                  image,
                  width: 200.0,
                  fit: BoxFit.cover,
                  height: 200.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}