import 'package:flutter/material.dart';
import 'package:svagatam_mysore/widgets/displaycard.dart';
import 'package:svagatam_mysore/widgets/info.dart';
import '../dashboard.dart';


class Attractions extends StatefulWidget {
  @override
  _AttractionsState createState() => _AttractionsState();
}

class _AttractionsState extends State<Attractions> {
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
            "Attractions",
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
                        name: 'Brindavan Gardens',
                          img: "assets/images/BG.jpg",
                          Address:
                          "KRS Dam Rd, Srirangapatna, Karnataka 571607 570010, India",
                          Overview:
                          "Located near the Krishnaraja Sagar Dam, on the outskirts of the city, the Brindavan Gardens have been modelled after the renowned Shalimar Gardens in Kashmir known for their Mughal design sensibilities. An endless expanse of green, dotted with colourful blooms, the terraced gardens are well laid, with neatly manicured lawns, trees, shrubs, flowerbeds, water chutes, and water channels. They are spread over an area of 60 acre, and admired for their symmetrical design. The highlight for visitors, however, is the famed musical fountain. A water ballet of sorts, with lights and music, is put up every evening for visitors to enjoy. Other places of interest at Brindavan gardens include the statue of Goddess Cauvery, children's park, fishery, pyramid fountain, inverted basket fountain, hydraulic research station and several others. There is something for everyone, and the sights, sounds and fragrances of the gardens are worth experiencing when you're in Mysuru. The credit for the creation of the gardens and their beautification goes to the then dewan of the princely state of Mysore, Sir Mirza Ismail. The gardens lie around 145 km from the state capital of Bengaluru."),
                    ),
                  );
                },
                image: "assets/images/BG.jpg",
                title: "Brindavan Gardens",
              ),
              homeCards(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Info(
                            name: "Bylekuppe",
                              img: "assets/images/Bylekuppe.jpg",
                              Overview:
                              "Known for handicrafts, incense and carpet factories as well as monasteries, Bylekuppe is one of the largest settlements of Tibetans in the southern part of the country. The most important of monasteries here include Sera Mey and the Great Gompa of Sera Jey. Also located here is the Mahayana Buddhist University with an enormous prayer hall. In the neighbouring settlement is Tashi Lhunpo, which is known as the seat of the Panchen Lama. This place is most famously associated with the Namdrolig Nyingmapa Monastery, which is the largest teaching centre of Nyingmapa, the lineage of Tibetan Buddhism in the world. It was founded by His Holiness Pema Norby Rinpoche in 1963 as the second seat of the Palyul Monastery (one of the six great Tibet Nyingma Mother monasteries). It is located about 90 km from Mysuru.",
                              Address:
                              "Bylakuppe S.O, Mysore, Karnataka, India (IN), Pin Code:-571104")));
                },
                image: "assets/images/Bylekuppe.jpg",
                title: "Bylekuppe",
              ),
              homeCards(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Info(
                            name: "Chamundi Hill",
                            img: "assets/images/CH.jpg",
                            Overview:
                            "Known for handicrafts, incense and carpet factories as well as monasteries, Bylekuppe is one of the largest settlements of Tibetans in the southern part of the country. The most important of monasteries here include Sera Mey and the Great Gompa of Sera Jey. Also located here is the Mahayana Buddhist University with an enormous prayer hall. In the neighbouring settlement is Tashi Lhunpo, which is known as the seat of the Panchen Lama. This place is most famously associated with the Namdrolig Nyingmapa Monastery, which is the largest teaching centre of Nyingmapa, the lineage of Tibetan Buddhism in the world. It was founded by His Holiness Pema Norby Rinpoche in 1963 as the second seat of the Palyul Monastery (one of the six great Tibet Nyingma Mother monasteries). It is located about 90 km from Mysuru.",
                            Address:
                            "Chamundi Hill, Chamundi Road, Mysore, Karnataka 570001",
                          )));
                },
                image: "assets/images/CH.jpg",
                title: "Chamundi Hill",
              ),
              homeCards(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Info(
                          name: "Channapatna",
                          img: "assets/images/Channapatna.jpg",
                          Overview: "Known for lacquerware and wooden toys, Channapatna is famously called 'Gombegala Ooru', which means town of toys. Made of aale mara or ivory wood, which is coloured with vegetable dyes, these environment-friendly toys line the streets of the town. The country's first crafts park is also located here, with a cluster of around 3,000 artisans involved in lacquerware production. Historically, Channapatna owes its toy-making legacy to warrior king Tipu Sultan, who encouraged Persian craftsmen to come down to India and teach the locals this skill. However, it was Bavas Miyan who took it upon himself to introduce the artisans to new technologies, thus allowing them to optimise the production process. From dolls, horses to mathematical puzzles, one can buy a variety of toys from here.",
                          Address: "Channapatna H.O, Ramanagara, Karnataka, India (IN), Pin Code:-562160",
                        ),
                      ));
                },
                image: "assets/images/Channapatna.jpg",
                title: "Channapatna",
              ),
              homeCards(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Info(
                          name: "Lalitha Mahal Palace",
                          img: "assets/images/LM.jpg",
                          Overview: "Located on a hillock at the foothills of the Chamundi Hills, Lalitha Mahal Palace, is the second-largest palace in the city of palaces, as Mysuru is fondly called. A unique amalgamation of Renaissance and English manor and Italian palazzo styles, this palatial building is mesmerising. The two-storeyed structure has a projecting porch and it is supported by double columns. The centre of attraction is the dome above the entrance hall. As you enter the Guard House, as the decorative entryway is called, you are greeted with breathtakingly beautiful and and intricately carved walls and ceilings. Belgian crystal chandeliers, cut glass lamps, Persian carpets and exquisite marble floors add to the grandeur of the palace.Built in 1931 on the design made by Bombay (now Mumbai)-based architect EW Fritchley, the construction of Lalitha mahal palace cost Rs 13 lakh. It was made as a guest house for European visitors who arrived in the city to meet Maharaja Krishnaraja Wodeyar IV, the ruler of Mysore (1894-1940). Now, it is used to host special events, like vintage car rallies, and marriages and other ceremonies. Inside, the palace has large, well-appointed bedrooms, baroquely decorated halls with high ceilings and accent walls. A lawn at the back is equipped with a swimming pool and walkway. Now, Lalitha Mahal has been converted into a luxury hotel, and plays host to noted politicians, film stars etc.",
                          Address: "Lalitha Mahal Palace Road, Lalithmahal Nagar, Siddhartha Layout, Mysuru, Karnataka 570028",
                        ),
                      ));
                },
                image: "assets/images/LM.jpg",
                title: "Lalitha Mahal Palace",
              ),
              homeCards(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Info(
                          name: "Rajiv Gandhi National Park",
                          img: "assets/images/RGNP.jpeg",
                          Overview: "Also known as Nagarhole National Park, it is one of the premier tiger reserves along with the adjoining Bandipur Tiger Reserve and is a part of Nilgiri Biosphere Reserve. With a healthy predator-prey ratio, the national park is home to tigers, leopards, chital, sambars, gaurs and Asiatic elephants. Nagarhole means snake stream in Kannada, named so after the serpentine river that runs through the jungle.Spread across an impressive 571 sq km, the park is home to 250 species of birds like the heron, stork, egret, duck, kite, eagle, falcon, partridge, peafowl, lapwing, wagtail, sandpiper, woodpecker, sunbird, warbler, babbler, owl and others. Some reptiles are also found here, such as the marsh crocodile, star tortoise, rat snake, Russell's viper and Indian python. To see the animals in their natural habitat, one can take their car accompanied by a forest guide to certain sections of the preserve",
                          Address: "Nagarhole Rd, Veeranahosahalli, Karnataka 571105",
                        ),
                      ));
                },
                image: "assets/images/RGNP.jpeg",
                title: "Rajiv Gandhi National Park",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
