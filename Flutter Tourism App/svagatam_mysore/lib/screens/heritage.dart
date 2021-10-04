import 'package:flutter/material.dart';
import 'package:svagatam_mysore/widgets/displaycard.dart';
import 'package:svagatam_mysore/widgets/info.dart';
import '../dashboard.dart';

class Heritage extends StatefulWidget {
  @override
  _HeritageState createState() => _HeritageState();
}

class _HeritageState extends State<Heritage> {
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
            "Heritage Sites",
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
                        name: "Tipu Summer Palace",
                        img: "assets/images/tipupalace.jpeg",
                        Address: "Tippu Sultan Palace Rd, Chamrajpet, Bengaluru, Karnataka 560018",
                        Overview:
                            "Also known as Dariya Daulat Bagh (translating to garden of the sea of wealth), the summer palace of Tipu Sultan was built in 1784 AD. Based on Indo-Islamic architectural style, the palace is majorly built in teakwood and located on the banks of River Cauvery, just outside Tipu's Fort. Wooden pillars stand on the edges of the plinth. Two wings of the palace have recessed bays with pillars supporting the roof. There are four simple staircases, built adjacent to the four partition walls that divide the audience hall into four rooms at the corners. There is also a central hall connecting the eastern and western corridors. What makes the palace truly spectacular though, is that almost every inch of the it is covered in frescoes that resemble Mysore paintings.",
                      ),
                    ),
                  );
                },
                image: "assets/images/tipupalace.jpeg",
                title: "Tipu Summer Palace",
              ),
              homeCards(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Info(
                    name: "Srirangapatna",
                    Overview: "Located on the outskirts of the city, Srirangapatna is the island fortress of the warrior king, Tipu Sultan. It looks like an egg and is situated on the banks of Cauvery river. Srirangapatna is dotted with architectural masterpieces, a legacy of the Vijayanagar and Hoysala styles. The major attractions are the Ranganathaswamy Temple, Tipu's mosque, Tipu's summer palace, the Wellesley bridge and the dungeons where British prisoners were once kept. Legend has it that Tipu Sultan was killed inside the fort by the armies of the Nizams of Hyderabad and the British, marking the last fight of the fourth Anglo-Mysore war. River Cauvery flowed around the perimeter of the complex on all sides, thus creating an impenetrable island fortress. On the banks of River Cauvery, around 2 km from here, stands the Nimishambha (Goddess Parvati's incarnation) temple.",
                    img: "assets/images/sriranga.jpeg",
                    Address: "Srirangapatna, Mandya, Mysore, Karnataka 571401, India"
                  )));
                },
                image: "assets/images/sriranga.jpeg",
                title: "Srirangapatna",
              ),
              homeCards(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Info(
                    name: "Wellesley Bridge",
                    img: "assets/images/welles.jpeg",
                    Overview: "Built in 1804 by Dewan Purnaiah, Wellesley Bridge was named after governor general Marquis of Wellesley. The bridge is located in the town of Srirangapatna, which is about an hour and a half from Mysore. It showcases native architecture, with stone pillars, stone corbels, and girders. While it looks quite rugged, it has been able to withstand the test of time, and even survived several floods. It is still standing strong, and makes for a lovely spot for a photography session. The jagged rock structure built across a lovely river, surrounded by lush green vistas on either side creates an exquisite portrait, one that the locals and tourists alike love to visit all year round. Be sure to mark it on your itinerary while coming down here.",
                    Address: "Kaveri River, Srirangapatna, Karnataka 571438",
                  )));
                },
                image: "assets/images/welles.jpeg",
                title: "Wellesley Bridge",
              ),
              homeCards(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Info(
                    name: "Gumbaz",
                    img: "assets/images/gumbaz.jpeg",
                    Overview: "Located just outside the fort of Tipu Sultan at Srirangapatna is the Gumbaz, which houses the tombs of Hyder Ali and Tipu Sultan. A splendid example of Indo-Islamic architecture, the Gumbaz has doors made in ebony that have been inlaid with ivory and boast a magnificent dome. There are tiger stripes on the walls, an ode to the legacy of Tipu Sultan. Built during the period of Tipu Sultan is the Masjid-e-ala mosque with two minarets and flower designs carved on its pillars and roof. Delicately chiselled grape bunches and creepers have been carved in the centre of the mosque. In the courtyard is a solar clock made in stone. The structure itself sits on a platform that comprises pillars made from black granite. Gumbaz also has lush gardens known collectively as Lalbagh.",
                    Address: "Gumbaz Rd, Ganjam, Karnataka 571477",
                  )));
                },
                image: "assets/images/gumbaz.jpeg",
                title: "Gumbaz",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
