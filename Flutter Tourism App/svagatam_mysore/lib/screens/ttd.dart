import 'package:flutter/material.dart';
import 'package:svagatam_mysore/widgets/displaycard.dart';
import 'package:svagatam_mysore/widgets/info.dart';
import '../dashboard.dart';

class ThingsToDo extends StatefulWidget {
  @override
  _ThingsToDoState createState() => _ThingsToDoState();
}

class _ThingsToDoState extends State<ThingsToDo> {
  Future<bool> _onBackPressed() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Dashboard(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onBackPressed,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Adventures",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              homeCards(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Info(
                        name: "Wax Museum",
                        img: "assets/images/WM.jpg",
                        Address:
                            "Melody World Wax Museum Mysore Address: 1, Vihara Marga, Siddhartha Layout, Mysuru, Karnataka, 570011, India",
                        Overview:
                            "The Wax Museum at Mysore is aptly named as Melody World. The museum fascinates visitors through its display of various musical instruments in interesting settings, replete with life size wax statues of musicians playing the musical instruments. Since the museum is based on music and musical instruments it reflects the diverse kinds of musical instruments that have been in use across various parts of the country and the world since ancient times. This is a one-of-its kind wax museum in the whole world. The museum was established in October 2010 by a Bengaluru based IT professional named Shreeji Bhaskaran. It was created as a tribute to musicians from all over the world.",
                      ),
                    ),
                  );
                },
                image: "assets/images/WM.jpg",
                title: "Wax Museum",
              ),
              homeCards(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Info(
                              name: "sky diving mysuru",
                              img: "assets/images/SD.jpg",
                              Overview:
                                  "Skydiving, no doubt is the most enthusiastic adventure sport amongst all. There is no feeling better than soaring in the sky at a height of 10,000 feet. If ever you dreamt in your childhood to fly and soar skies like a bird, skydiving gives you a chance to full fill it. Skydiving in Mysore is a breathtaking experience for the beautiful city has a lot to offer. This adventure sport can be performed individually as well as in groups. That moment when you are 10,000 feet above and being pulled down by the gravity is just not definable. Skydiving is also of different types depending upon the nature for example the Tandem Jump, Accelerated free fall etc. In Tandem Jump you are with an instructor who does everything for you, accompanies you during the free fall and opening the parachute. All you have to do is to sit back and enjoy the experience. In accelerated free fall, you have to perform the task own your own, you are made to jump from a helicopter and yourself open the parachute. The charges for the same differ. The minimal prices are INR 35,000 per person. For a traveler to perform skydiving, he must make sure that he is physically and fit. There is also a rigorous training session followed by the final one. The training initially lasts for a day or two and the you are all set to fly high. Skydiving in Mysore is the most sought after things to do and is definitely on a traveler’s bucket list.",
                              Address:
                                  "Mysuru Airport, Mysuru, Karnataka 570001")));
                },
                image: "assets/images/SD.jpg",
                title: "sky diving mysuru",
              ),
              homeCards(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Info(
                                name: "shivasamudra falls",
                                img: "assets/images/SF.jpg",
                                Overview:
                                    "Your heart is sure to skip a beat or two, when you see the vastness of River Cauvery divided into two by the island town of Shivanasamudra. Climb up the clock tower to witness this miraculous occurrence as the roaring river dissects into Gaganachukki Falls and Bharachukki Falls. Rainbows, literally, ride the air here! The second biggest waterfall in India, Shivasamudram Falls are the sixteenth largest in the world. Shivanasamudra Falls were formerly known as the Kaveri Falls.The River Cauveri divides into two branches and each branch cascades down rocky cliffs, which are known as the Gaganachukki and the Bharachukki, both around a kilometre away from each other. These alluring waterfalls are surrounded by hill forests of the Kaveri Wildlife Sanctuary. Gaganachukki, the western falls, are 98 meters tall and can be viewed from the Hydel Power viewing end or the Dargah end. This waterfall is best visited when the Kabini River floods along with Cauveri River in the months of July and August. Bharachukki, the eastern falls, is about a kilometer away from the Dargah and has a wider falling edge with a section that looks like a 'U', similar to Niagara Falls.",
                                Address: "Mandya, Karnataka 571401, India",
                              )));
                },
                image: "assets/images/SF.jpg",
                title: "shivasamudra falls",
              ),
              homeCards(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Info(
                          name: "Mysuru Sand Sculpture Museum",
                          img: "assets/images/MSS.jpg",
                          Overview:
                              "Mysore Sand Sculpture Museum is the first sand sculpture museum in India, located in Mysore, Karnataka.[1][2] It was inaugurated in 2014, with 150 sand sculptures on display, on a one-acre land at the base of Chamundi Hills. Each of the sculptures was created by sand artist MN Gowri and based on a theme such as Mysore's cultural heritage, wildlife and religion.",
                          Address:
                              "Chamundi Hill Road, KC Layout, Mysuru, Karnataka 570010",
                        ),
                      ));
                },
                image: "assets/images/MSS.jpg",
                title: "Mysuru Sand Sculpture Museum",
              ),
              homeCards(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Info(
                          name: "jayachamarajendra art gallery",
                          img: "assets/images/JAG.jpg",
                          Overview:
                              "Jayachamarajendra Art Gallery is not only an art gallery but also a palace where the royal family lived once. Built in 1861 during the rule of Mysore Maharaja Krishnaraja Wodeyar III, Jaganmohan Palace was constructed as an alternate home for the royal family. However after the old Mysore Palace was burnt completely in a fire breakout, the royal family stayed in this palace till the new Mysore palace was built in 1897.Jaganmohan palace was later converted into an art gallery, during the reign of Krishnaraja Wodeyar IV in 1915. In the year 1955, it was renamed as Jayachamarajendra Art Gallery in the honour of Sri Jaya Chamarajendra Wodeyar Bahadur.",
                          Address:
                              " Opp City Bus Stand, Jagan Mohan Palace Road, Chamrajpura, Mysuru, Karnataka, 570024, India",
                        ),
                      ));
                },
                image: "assets/images/JAG.jpg",
                title: "jayachamarajendra art gallery",
              ),
              homeCards(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Info(
                          name: "Rail Museum",
                          img: "assets/images/RM.jpg",
                          Overview:
                              "The Railway Museum at Mysore, India is an outdoor exhibit of vintage locomotives.The Railway Museum was established in 1979 by Indian Railways, the second such museum after the National Railway Museum in Delhi. The museum is opposite the Central Food Technology and Research Institute on Krishnaraja Sagar Road. It has locomotives and a gallery of photographs and paintings depicting the growth of railways in India. Railway signals and lights are also displayed. The museum has a battery-operated mini-train giving a short ride for children on the grounds.",
                          Address:
                              "KRS Road, opp. CFTRI, Medar Block, Yadavagiri, Mysuru, Karnataka 570005",
                        ),
                      ));
                },
                image: "assets/images/RM.jpg",
                title: "Rail Museum",
              ),
              homeCards(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Info(
                          name: "Folklore Museum (Mysuru)",
                          img: "assets/images/FL.jpg",
                          Overview:
                              "The folklore museum that contains representative collections of art and crafts from all over Karnataka. The museum was founded in 1968. It is located in the University of Mysore in the Manasagangothri campus in the Jayalakshmi Vilas Mansion. Since its foundation the University of Mysore has contributed to study of folklore, and the museum has been developed to its present level by scholars such as P.R.Thippeswamy, Javeregowda and Jeesham Paramashivaiah. P.R.Thippeswamy brought material from all over Karnataka to increase the museum's collection. As a folklore museum it not only showcases items but also elements of music, dance and drama.",
                          Address: "Jayalakshmi Vilas Mansion, Mysore",
                        ),
                      ));
                },
                image: "assets/images/FL.jpg",
                title: "Folklore Museum (Mysuru)",
              )
            ],
          ),
        ),
      ),
    );
  }
}
