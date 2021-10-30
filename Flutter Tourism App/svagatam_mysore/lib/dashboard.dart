import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:svagatam_mysore/screens/attractions.dart';
import 'package:svagatam_mysore/screens/cuisine.dart';
import 'package:svagatam_mysore/screens/nature.dart';
import 'package:svagatam_mysore/screens/temple.dart';
import 'package:svagatam_mysore/screens/ttd.dart';
import 'package:svagatam_mysore/thingsNearby.dart';
import 'screens/heritage.dart';
import 'package:svagatam_mysore/screens/travel.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  bool visible1img = true;
  bool visible2img = true;
  bool visible3img = true;
  bool visible4img = true;
  bool visible5img = true;
  bool visible6img = true;
  bool visible7img = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(184, 54, 66, 1),
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        elevation: 20,
        //backgroundColor: Colors.white,
        title: Center(
            child: Text(
          "Mysuru Tourism",
          style: TextStyle(
              color: Colors.black,
              fontFamily: 'Cormorant',
              fontWeight: FontWeight.bold),
        )),
      ),
      //backgroundColor: Colors.orangeAccent,
      body: Container(
        /*
        decoration: new BoxDecoration(
          //borderRadius: BorderRadius.circular(12.0),
          image: new DecorationImage(
            //colorFilter: new ColorFilter.mode(
                //Colors.white.withOpacity(0.4), BlendMode.dstATop),
            image: new AssetImage('assets/images/background.jpg'),
            fit: BoxFit.cover,
          ),
        ),

         */
        child: StaggeredGridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 12.0,
          mainAxisSpacing: 12.0,
          padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 30.0),
          children: <Widget>[
            _buildTile(
              GestureDetector(
                onLongPress: () {
                  setState(() {
                    visible1img = true;
                  });
                },
                onLongPressEnd: (value) {
                  setState(() {
                    visible1img = false;
                  });
                },
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(padding: EdgeInsets.only(bottom: 16.0)),
                          AnimatedOpacity(
                            opacity: visible1img ? 0.0 : 1.0,
                            duration: Duration(seconds: 1),
                            child: Text('Heritage',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: "Cormorant",
                                    fontSize: 24.0)),
                          ),
                          /*
                          Text('Next Week',
                              style: TextStyle(color: Colors.black45)),

                           */
                        ]),
                  ),
                  decoration: new BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    image: new DecorationImage(
                      colorFilter: new ColorFilter.mode(
                          Colors.black.withOpacity(visible1img ? 1.0 : 0.4),
                          BlendMode.dstATop),
                      image: new AssetImage('assets/images/heritage.jpeg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Heritage()));
              },
            ),
            _buildTile(
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Cuisine()));
                },
                onLongPress: () {
                  setState(() {
                    visible2img = true;
                  });
                },
                onLongPressEnd: (value) {
                  setState(() {
                    visible2img = false;
                  });
                },
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(padding: EdgeInsets.only(bottom: 16.0)),
                          AnimatedOpacity(
                            opacity: visible2img ? 0.0 : 1.0,
                            duration: Duration(seconds: 1),
                            child: Text('Cuisine',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: "Cormorant",
                                    fontSize: 24.0)),
                          ),
                          /*
                          Text('Next Week',
                              style: TextStyle(color: Colors.black45)),

                           */
                        ]),
                  ),
                  decoration: new BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    image: new DecorationImage(
                      colorFilter: new ColorFilter.mode(
                          Colors.white.withOpacity(visible2img ? 1.0 : 0.4),
                          BlendMode.dstATop),
                      image: new AssetImage('assets/images/cusine.jpeg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              /*
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      /*
                      Material(
                          color: Colors.amber,
                          shape: CircleBorder(),
                          child: Padding(
                            padding: EdgeInsets.all(16.0),
                            child: Icon(Icons.notifications,
                                color: Colors.white, size: 30.0),
                          )),

                       */
                      Padding(padding: EdgeInsets.only(bottom: 16.0)),
                      Text('Weather',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                              fontSize: 24.0)),
                      Text('Next Week', style: TextStyle(color: Colors.black45)),
                    ]),
              ),

               */
              onTap: () {},
            ),
            _buildTile(
              /*
              Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text('Crop Yield',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 28.0)),
                              Padding(padding: EdgeInsets.all(10)),
                            ],
                          ),
                          /*
                          DropdownButton(
                              hint: Text("Select Crop"),
                              isDense: true,
                              value: actualDropdown,
                              onChanged: (String value) => setState(() {
                                actualDropdown = value;
                                colorSet(actualDropdown);
                                yieldText(actualDropdown);
                                reqyieldText(actualDropdown);
                                actualChart = chartDropdownItems
                                    .indexOf(value); // Refresh the chart
                              }),
                              items: chartDropdownItems.map((String title) {
                                return DropdownMenuItem(
                                  value: title,
                                  child: Text(title,
                                      style: TextStyle(
                                          color: Colors.blue,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14.0)),
                                );
                              }).toList())

                           */
                        ],
                      ),
                      Padding(padding: EdgeInsets.only(bottom: 8.0)),
                      /*
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Text("Total Yield of Hola",
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.w700,
                                    )),
                                FittedBox(
                                  fit: BoxFit.cover,
                                  child: Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                    CrossAxisAlignment.baseline,
                                    textBaseline: TextBaseline.alphabetic,
                                    children: <Widget>[
                                      Text("Yielda",
                                          style: TextStyle(
                                            color: Colors.red,
                                            fontSize: 25.0,
                                            fontWeight: FontWeight.w700,
                                          )),
                                      Text('Mg/ha')
                                    ],
                                  ),
                                ),
                                Text("Required yield of Mola Mola",
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.w700,
                                    )),
                                FittedBox(
                                  fit: BoxFit.cover,
                                  child: Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                    CrossAxisAlignment.baseline,
                                    textBaseline: TextBaseline.alphabetic,
                                    children: <Widget>[
                                      Text("reqYielda",
                                          style: TextStyle(
                                            color: Colors.lightGreen[400],
                                            fontSize: 25.0,
                                            fontWeight: FontWeight.w700,
                                          )),
                                      Text('Mg/ha')
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          /*
                          Container(
                            child: textColor == Colors.green[400]
                                ? Container()
                                : Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Icon(
                                Icons.warning,
                                color: Colors.red,
                                size: 40,
                              ),
                            ),
                          )
                          */
                        ],
                      ),
                      */
                      /*
                      Sparkline(
                        data: charts[actualChart],
                        lineWidth: 5.0,
                        lineColor: Colors.greenAccent,
                      )

                       */
                    ],
                  )),

               */
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Attractions()));
                },
                onLongPress: () {
                  setState(() {
                    visible3img = true;
                  });
                },
                onLongPressEnd: (value) {
                  setState(() {
                    visible3img = false;
                  });
                },
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(padding: EdgeInsets.only(bottom: 16.0)),
                          AnimatedOpacity(
                            opacity: visible3img ? 0.0 : 1.0,
                            duration: Duration(seconds: 1),
                            child: Text('Attractions',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: "Cormorant",
                                    fontSize: 24.0)),
                          ),
                          /*
                          Text('Next Week',
                              style: TextStyle(color: Colors.black45)),

                           */
                        ]),
                  ),
                  decoration: new BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    image: new DecorationImage(
                      colorFilter: new ColorFilter.mode(
                          Colors.white.withOpacity(visible3img ? 1.0 : 0.4),
                          BlendMode.dstATop),
                      image: new AssetImage('assets/images/palace.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            _buildTile(
              /*
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      /*
                      Material(
                          color: Colors.teal,
                          shape: CircleBorder(),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(Icons.attach_money,
                                color: Colors.white, size: 30.0),
                          )),

                       */
                      Padding(padding: EdgeInsets.only(bottom: 24.0)),
                      Text('Compensation',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                              fontSize: 19.0)),
                      Text("Request Compensation",
                          style: TextStyle(color: Colors.black45, fontSize: 14)),
                    ]),
              ),

               */
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Nature()));
                },
                onLongPress: () {
                  setState(() {
                    visible4img = true;
                  });
                },
                onLongPressEnd: (value) {
                  setState(() {
                    visible4img = false;
                  });
                },
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(padding: EdgeInsets.only(bottom: 16.0)),
                          AnimatedOpacity(
                            opacity: visible4img ? 0.0 : 1.0,
                            duration: Duration(seconds: 1),
                            child: Text('Nature',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: "Cormorant",
                                    fontSize: 24.0)),
                          ),
                          /*
                          Text('Next Week',
                              style: TextStyle(color: Colors.black45)),

                           */
                        ]),
                  ),
                  decoration: new BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    image: new DecorationImage(
                      colorFilter: new ColorFilter.mode(
                          Colors.white.withOpacity(visible4img ? 1.0 : 0.4),
                          BlendMode.dstATop),
                      image: new AssetImage('assets/images/nature.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              onTap: () {},
            ),
            _buildTile(
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Temples()));
                },
                onLongPress: () {
                  setState(() {
                    visible5img = true;
                  });
                },
                onLongPressEnd: (value) {
                  setState(() {
                    visible5img = false;
                  });
                },
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(padding: EdgeInsets.only(bottom: 16.0)),
                          AnimatedOpacity(
                            opacity: visible5img ? 0.0 : 1.0,
                            duration: Duration(seconds: 1),
                            child: Text('Temples',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: "Cormorant",
                                    fontSize: 24.0)),
                          ),
                          /*
                          Text('Next Week',
                              style: TextStyle(color: Colors.black45)),

                           */
                        ]),
                  ),
                  decoration: new BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    image: new DecorationImage(
                      colorFilter: new ColorFilter.mode(
                          Colors.white.withOpacity(visible5img ? 1.0 : 0.4),
                          BlendMode.dstATop),
                      image: new AssetImage('assets/images/temple.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              /*
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      /*
                      Material(
                          color: Colors.red,
                          shape: CircleBorder(),
                          child: Padding(
                            padding: EdgeInsets.all(16.0),
                            child: Icon(Icons.store_mall_directory,
                                color: Colors.white, size: 30.0),
                          )),

                       */
                      Padding(padding: EdgeInsets.only(bottom: 8.0)),
                      Text('Shop',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                              fontSize: 24.0)),
                      Text("The Farmer's Shop",
                          style: TextStyle(color: Colors.black45)),
                    ]),
              ),

               */
              onTap: () {},
            ),
            _buildTile(
              /*
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      /*
                      Material(
                          color: Colors.teal,
                          shape: CircleBorder(),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(Icons.attach_money,
                                color: Colors.white, size: 30.0),
                          )),

                       */
                      Padding(padding: EdgeInsets.only(bottom: 24.0)),
                      Text('Compensation',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                              fontSize: 19.0)),
                      Text("Request Compensation",
                          style: TextStyle(color: Colors.black45, fontSize: 14)),
                    ]),
              ),

               */
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ThingsToDo()));
                },
                onLongPress: () {
                  setState(() {
                    visible6img = true;
                  });
                },
                onLongPressEnd: (value) {
                  setState(() {
                    visible6img = false;
                  });
                },
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(padding: EdgeInsets.only(bottom: 16.0)),
                          AnimatedOpacity(
                            opacity: visible6img ? 0.0 : 1.0,
                            duration: Duration(seconds: 1),
                            child: Text('Things To Do',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: "Cormorant",
                                    fontSize: 18.0)),
                          ),
                          /*
                          Text('Next Week',
                              style: TextStyle(color: Colors.black45)),

                           */
                        ]),
                  ),
                  decoration: new BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    image: new DecorationImage(
                      colorFilter: new ColorFilter.mode(
                          Colors.white.withOpacity(visible6img ? 1.0 : 0.4),
                          BlendMode.dstATop),
                      image: new AssetImage('assets/images/thingstodo.jpeg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              onTap: () {},
            ),
            _buildTile(
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Travel()));
                },
                onLongPress: () {
                  setState(() {
                    visible7img = true;
                  });
                },
                onLongPressEnd: (value) {
                  setState(() {
                    visible7img = false;
                  });
                },
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(padding: EdgeInsets.only(bottom: 16.0)),
                          AnimatedOpacity(
                            opacity: visible7img ? 0.0 : 1.0,
                            duration: Duration(seconds: 1),
                            child: Text('How To Reach',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: "Cormorant",
                                    fontSize: 17.0)),
                          ),
                          /*
                          Text('Next Week',
                              style: TextStyle(color: Colors.black45)),

                           */
                        ]),
                  ),
                  decoration: new BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    image: new DecorationImage(
                      colorFilter: new ColorFilter.mode(
                          Colors.white.withOpacity(visible7img ? 1.0 : 0.4),
                          BlendMode.dstATop),
                      image: new AssetImage('assets/images/reach.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              /*
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      /*
                      Material(
                          color: Colors.red,
                          shape: CircleBorder(),
                          child: Padding(
                            padding: EdgeInsets.all(16.0),
                            child: Icon(Icons.store_mall_directory,
                                color: Colors.white, size: 30.0),
                          )),

                       */
                      Padding(padding: EdgeInsets.only(bottom: 8.0)),
                      Text('Shop',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                              fontSize: 24.0)),
                      Text("The Farmer's Shop",
                          style: TextStyle(color: Colors.black45)),
                    ]),
              ),

               */
              onTap: () {},
            ),
          ],
          staggeredTiles: [
            StaggeredTile.extent(1, 180.0),
            StaggeredTile.extent(1, 180.0),
            StaggeredTile.extent(2, 250.0),
            StaggeredTile.extent(1, 180.0),
            StaggeredTile.extent(1, 180.0),
            StaggeredTile.extent(1, 180.0),
            StaggeredTile.extent(1, 180.0),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => ThingsNearby()));
        },
        tooltip: "What's Nearby?",
        child: Container(
          decoration: BoxDecoration(
            //borderRadius: BorderRadius.circular(50.0),
            image: new DecorationImage(
              //colorFilter: new ColorFilter.mode(
              //    Colors.white.withOpacity(0.4), BlendMode.dstATop),
              image: AssetImage('assets/images/logo.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: SizedBox(
            width: 38,
            height: 38,
          ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

Widget _buildTile(Widget child, {Function() onTap}) {
  return Material(
      elevation: 14.0,
      borderRadius: BorderRadius.circular(12.0),
      shadowColor: Colors.white,
      color: Colors.white,
      child: InkWell(
          // Do onTap() if it isn't null, otherwise do print()
          onTap: onTap != null
              ? () => onTap()
              : () {
                  print('Not set yet');
                },
          child: child));
}
