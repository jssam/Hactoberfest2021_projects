import 'package:flutter/material.dart';
import 'package:svagatam_mysore/widgets/displaycard.dart';
import 'package:svagatam_mysore/widgets/info.dart';
import '../dashboard.dart';

class Nature extends StatefulWidget {
  @override
  _NatureState createState() => _NatureState();
}

class _NatureState extends State<Nature> {
  @override
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
            "Nature",
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
                        name: "Ranganathittu Bird Sanctuary",
                        img: "assets/images/RBS.jpeg",
                        Address:
                            "Ranganathittu Road, District Mandya, Srirangapatna, Karnataka 571438",
                        Overview:
                            "A paradise for bird-lovers, the Ranganathittu Bird Sanctuary gives one the opportunity to observe nature at close quarters. From both exotic and endemic birds to crocodiles, the sanctuary is a treat for wildlife enthusiasts. If fortune favours, one can also sight birds that come from as far as Siberia to make their home here. Some of the birds you can spot here are the darter, peafowl, pond heron, wild duck, large cormorant, heron, great stone plover, kingfisher, cattle egret, the lesser whistling teal, Indian cliff swallow, great stone plover, river tern, streak-throated swallow, among others. Reptiles and mammals found here are the common mongoose, flying fox, palm civet, common otter, bonnet macaque, and the marsh crocodile. The best way to explore the sanctuary is through boat rides towards the early hours of the morning. The sanctuary, lying on the outskirts of the city, is spread over an area of 40 acre and comprises six small islands. Set amidst a picturesque setting with bamboo trees lining the area, the sanctuary is a paradise for bird-lovers. It is the result of the efforts of renowned ornithologist Dr Salim Ali, who persuaded the then king of Mysore to form a bird sanctuary.",
                      ),
                    ),
                  );
                },
                image: "assets/images/RBS.jpeg",
                title: "Ranganathittu Bird Sanctuary",
              ),
              homeCards(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Info(
                          name: "Dubare Elephant Camp",
                          Overview:
                              "Located in Dubare, a natural island formed by River Cauvery, this camp is an elephant conservatory, housing about 150 animals currently. A fun and interesting spot to interact and learn more about the mammal, the camp offers opportunities to visitors to feed the animals with jaggery, coconuts, banana, sugarcane and ragi. Tourists can also watch the animals being given a scrub-bath, after which oil is applied to their forehead and tusks. Besides, you can indulge in elephant rides, coracle rides in the Cauvery river, angling, river rafting, bird-watching and trekking. While going on coracle rides, if you're lucky, you can spot the crocodiles basking in the sun. The elephants cared for in the camp are also a part of the famous Mysore Dussehra.The camp is a project undertaken by the forest department, and naturalists, who are experts in elephant history, ecology and biology, have been hired to educate visitors about the animals, and reinstate how important it is that they be protected and treated with kindness. Many homestays and resorts have been set up near the reserve, so guests can stay for a longer period and take a jeep safari into the jungle. The best time to visit the camp is between September and March.",
                          img: "assets/images/DEC.jpg",
                          Address:
                              "Kushalanagar, Nanjarayapatna, Karnataka 571234"),
                    ),
                  );
                },
                image: "assets/images/DEC.jpg",
                title: "Dubare Elephant Camp",
              ),
              homeCards(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Info(
                          name: "Rajiv Gandhi National Park",
                          img: "assets/images/RGNP.jpeg",
                          Overview:
                              "Also known as Nagarhole National Park, it is one of the premier tiger reserves along with the adjoining Bandipur Tiger Reserve and is a part of Nilgiri Biosphere Reserve. With a healthy predator-prey ratio, the national park is home to tigers, leopards, chital, sambars, gaurs and Asiatic elephants. Nagarhole means snake stream in Kannada, named so after the serpentine river that runs through the jungle.Spread across an impressive 571 sq km, the park is home to 250 species of birds like the heron, stork, egret, duck, kite, eagle, falcon, partridge, peafowl, lapwing, wagtail, sandpiper, woodpecker, sunbird, warbler, babbler, owl and others. Some reptiles are also found here, such as the marsh crocodile, star tortoise, rat snake, Russell's viper and Indian python. To see the animals in their natural habitat, one can take their car accompanied by a forest guide to certain sections of the preserve",
                          Address:
                              "Nagarhole Rd, Veeranahosahalli, Karnataka 571105",
                        ),
                      ));
                },
                image: "assets/images/RGNP.jpeg",
                title: "Rajiv Gandhi National Park",
              ),
              homeCards(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Info(
                            name: "Cauvery Wildlife Sanctuary",
                                img: "assets/images/CWS.jpeg",
                                Overview:
                                    "An idyllic site to experience wildlife at close quarters, the Cauvery Wildlife Sanctuary is home to tigers, leopards, wild dogs, sloth bears, gaurs, sambhars, chitals, Asian elephants and the four-horned antelopes. Skirted by the Cauvery river along the northern and eastern boundaries of the reserve, the sanctuary comprises a dry deciduous forest with abundant shrubbery. The sanctuary also provides shelters to endangered species like the grizzled giant squirrel, besides marsh crocodiles, pythons, cobras, Russell's vipers, branded kraits and turtles. Large populations of the Mahseer fish are found here as well, along with some species of bird such as the Sirkeer cuckoo, white-browed bulbul, green-billed malkoha and the pigmy woodpecker. Spread over an area of 523 sq km, the sanctuary can be explored through a jeep safari.",
                                Address: "Chamarajanagar, Karnataka 571444",
                              )));
                },
                image: "assets/images/CWS.jpeg",
                title: "Cauvery Wildlife Sanctuary",
              ),
              homeCards(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Info(
                            name: "Bandipur National Park",
                                img: "assets/images/BNP.jpeg",
                                Overview:
                                    "Covering an area of about 874.20 sq km, the Bandipur National Park is home to tigers, wild dogs, wild boars, jackals, panthers, Malabar squirrels, sloth bears, black-knapped hare, porcupines, red-headed vultures, flower peckers, brown fish owls, bee-eaters, kingfishers, monitor lizards, Indian rock pythons, flying lizards, vipers, rat snakes and spectacled cobras. Along with the adjoining Nagarhole National Park to the north, Mudumalai Wildlife Sanctuary in Tamil Nadu, and Wayanad Wildlife Sanctuary in Kerala, it is one of the premier tiger reserves in the country, not to mention the biggest biosphere. These forests are collectively known as the Nilgiri Biosphere Reserve, and are extremely well-protected against poachers and deforestation activities. Birds like the jungle fowl and green pigeon are also found in the park. Not only fauna, the park also shelters a wide range of timber trees like teak, rosewood, sandalwood, clumping bamboo, Indian kino tree along with flowering and fruiting trees like kadam, Indian gooseberry, satinwood, golden shower tree, black clutch and flame of the forest.",
                                Address:
                                    "Bandipur National Park, 370/4, JLB Road, Mysore, Karnataka 570005, India",
                              )));
                },
                image: "assets/images/BNP.jpeg",
                title: "Bandipur National Park",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
