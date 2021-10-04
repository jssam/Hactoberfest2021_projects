import 'package:flutter/material.dart';
import 'package:svagatam_mysore/widgets/displaycard.dart';
import 'package:svagatam_mysore/widgets/info.dart';
import '../dashboard.dart';

class Cuisine extends StatefulWidget {
  @override
  _CuisineState createState() => _CuisineState();
}

class _CuisineState extends State<Cuisine> {
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
            "Cuisines",
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
                        name: "Vada",
                        img: "assets/images/vada.jpeg",
                        Address:
                            "Popular Place Address - #62/B Gg Complex Nazarbad Main Road | Opposite To Zoo Garden, Mysuru (Mysore) 570010, India",
                        Overview:
                            "A South Indian savoury breakfast food, vadas are made from different ingredients like legumes such as chickpeas, green gram, black gram, pigeon pea and potatoes and sago. There are different types of vada, like medu and masala vada.",
                      ),
                    ),
                  );
                },
                image: "assets/images/vada.jpeg",
                title: "Vada",
              ),
              homeCards(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Info(
                              name: "upma",
                              Overview:
                                  "Also known as uppitu, upma is made as a thick porridge either from dry and roasted sooji (semolina) or from coarse rice flour. It is then flavoured with curry leaves. It is generally prepared for breakfast in South Indian households and is best served with curd.",
                              img: "assets/images/upma.jpeg",
                              Address:
                                  "Popular Place Address - #62/B Gg Complex Nazarbad Main Road | Opposite To Zoo Garden, Mysuru (Mysore) 570010, India")));
                },
                image: "assets/images/upma.jpeg",
                title: "upma",
              ),
              homeCards(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Info(
                                name: "Rasam Papad",
                                img: "assets/images/RP.jpeg",
                                Overview:
                                    "While rasam is a south Indian soup prepared with tamarind, pepper, cumin, chilli pepper and regional spices, papad is a disc-shaped crispy food item made from peeled gram flour, cooked or fried.",
                                Address:
                                    "Popular Place Address - #151, F2/1E, Khille Mohalla, Mysore Ooty Road, Mysuru, Karnataka 570010",
                              )));
                },
                image: "assets/images/RP.jpeg",
                title: "Rasam Papad",
              ),
              homeCards(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Info(
                                name: "Mysore Pak",
                                img: "assets/images/MP.jpeg",
                                Overview:
                                    "The famous sweet, Mysore pak was first prepared in the kitchens of the Mysore Palace during the reign of Krishnaraja Wodeyar IV, by a palace cook named Kakasura Madappa. He made a concoction of gram flour, ghee (clarified butter) and sugar. When asked its name, Madappa having had nothing in mind, simply called it the ‘Mysore pak’. It is made of gram flour, clarified butter, sugar, cardamom powder and refined oil.",
                                Address:
                                    "Popular Place Address - Shop No: 1, Devaraja Market Building, Near K.R. Circle, Sayyaji Rao Rd, Devaraja Mohalla, Mysuru, Karnataka 570001",
                              )));
                },
                image: "assets/images/MP.jpeg",
                title: "Mysore Pak",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
