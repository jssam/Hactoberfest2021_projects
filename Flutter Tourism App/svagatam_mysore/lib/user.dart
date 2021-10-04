import 'package:flutter/material.dart';
import 'package:svagatam_mysore/screens/heritage.dart';
import 'package:svagatam_mysore/screens/cuisine.dart';
import 'package:svagatam_mysore/screens/attractions.dart';
import 'package:svagatam_mysore/screens/nature.dart';
import 'package:svagatam_mysore/screens/temple.dart';
import 'package:svagatam_mysore/screens/ttd.dart';
import 'package:svagatam_mysore/screens/travel.dart';

class UserQuery extends StatefulWidget {
  @override
  _UserQueryState createState() => _UserQueryState();
}

class _UserQueryState extends State<UserQuery> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/user.jpg"),
            fit: BoxFit.cover,
            colorFilter: new ColorFilter.mode(
              Colors.black.withOpacity(0.7), BlendMode.darken,
            ),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Text(
              "What Do You Want To Explore?",
              style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 22),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Heritage()));
                    },
                    child: Container(
                      child: Center(child: Text("Heritage",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)),
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        image: DecorationImage(image: AssetImage("assets/images/heritage.jpeg"),fit: BoxFit.cover,colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.4), BlendMode.darken)),
                      ),

                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
                  child: GestureDetector(
                    onTap: (){
                      //TODO: Cuisine()
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Cuisine()));
                    },
                    child: Container(
                      child: Center(child: Text("Cuisine",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)),
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        image: DecorationImage(image: AssetImage("assets/images/cusine.jpeg"),fit: BoxFit.cover,colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.5), BlendMode.darken)),
                      ),

                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 16, 0),
                  child: GestureDetector(
                    onTap: (){
                      //TODO: ThingsToDo()
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ThingsToDo()));
                    },
                    child: Container(
                      child: Center(child: Text("Adventure",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),)),
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        image: DecorationImage(image: AssetImage("assets/images/thingstodo.jpeg"),fit: BoxFit.cover,colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.4), BlendMode.darken)),
                      ),

                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    //TODO Attractions()
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Attractions()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                    child: Hero(tag: "HERO",child: Image(image: AssetImage("assets/images/logo.png"),height: MediaQuery.of(context).size.height/5,width: MediaQuery.of(context).size.width/5,)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
                  child: GestureDetector(
                    onTap: (){
                      //TODO: Temples()
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Temples()));
                    },
                    child: Container(
                      child: Center(child: Text("Temples",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)),
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        image: DecorationImage(image: AssetImage("assets/images/temple.jpg"),fit: BoxFit.cover,colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.5), BlendMode.darken)),
                      ),

                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                  child: GestureDetector(
                    onTap: (){
                      //TODO Nature()
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Nature()));
                    },
                    child: Container(
                      child: Center(child: Text("Nature",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)),
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        image: DecorationImage(image: AssetImage("assets/images/nature.jpg"),fit: BoxFit.cover,colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.4), BlendMode.darken)),
                      ),

                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                  child: GestureDetector(
                    onTap: (){
                      //TODO Travel()
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Travel()));
                    },
                    child: Container(
                      child: Center(child: Text("Travel",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)),
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        image: DecorationImage(image: AssetImage("assets/images/flight.jpg"),fit: BoxFit.cover,colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.4), BlendMode.darken)),
                      ),

                    ),
                  ),
                ),
              ],
            ),

            /*
            GFButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Heritage()));
              },
              text: "Hello",
              shape: GFButtonShape.pills,
              fullWidthButton: true,
            ),

             */
          ],
        ),
      ),
    );
  }
}
