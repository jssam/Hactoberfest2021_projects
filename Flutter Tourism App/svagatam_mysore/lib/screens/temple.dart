import 'package:flutter/material.dart';
import 'package:svagatam_mysore/widgets/displaycard.dart';
import 'package:svagatam_mysore/widgets/info.dart';
import '../dashboard.dart';


class Temples extends StatefulWidget {
  @override
  _TemplesState createState() => _TemplesState();
}

class _TemplesState extends State<Temples> {
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
                        name: "St Philomena's Church",
                          img: "assets/images/SPC.jpeg",
                          Address:
                          "Lourdes Nagar, Ashoka Rd, Lashkar Mohalla, Mysuru, Karnataka 570001",
                        Overview: "Built in Neo-Gothic style, on the same lines as Germany’s Cologne Cathedral (in North Rhine-Westphalia), Saint Philomena church is considered to be the second largest church in Asia. Boasting stained glass windows that highlight Christ’s birth, the Last Supper, the Crucifixion, the Resurrection and the Ascension of Christ, it is truly a sight to behold. The spires are 53 m high, with the church’s architectural style reminding one of St Patrick’s Church in New York City, the USA. Every spire has a 12-foot-long cross adorning it. The pillars of the church have been embellished with carvings of flowers. The marble altar has a statue of St Philomena, which was brought to India from France. About 800 people can be accommodated inside at one time. The church was built in 1840, and gained popularity under the reign of Maharaja Krishnaraja Wodeyar IV, ruler of Mysore (1894-1940). It was initially constructed to cater to the small community of Europeans who had settled in Mysore at the time. However, as the community began to grow, the need for a larger church grew, and St Philomena’s was expanded. It is believed to have been designed by a French artist named Daly.",
                      )),
                  );
                },
                image: "assets/images/SPC.jpeg",
                title: "St Philomena's Church",
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
                            name: "Melukote",
                            img: "assets/images/M.jpeg",
                            Overview: "The land where saint Ramanujam walked over a thousand years ago, Melukote is a well-known pilgrim centre for the Vaishnava community that attracts lakhs of devotees during the famous Vauramudi festival. It is located in the Mandya district, easily accessible from the Bengaluru-Mysore highway.The Yaganarasimha Swamy and Cheluvanarayan Swamy temples found here are centuries old. The Cheluvanarayan Swamy Temple, dedicated to Lord Vishnu, was at one time frequented by the kings of Mysore, and has a lovely collection of jewels. At the time of Vauramudi (an annual spiritual event), the idol of the god wearing a diamond-encrusted crown, is carried out of the temple as part of a procession. The Academy of Sanskrit Research is also based in Melukote, which was once famous for its handlooms.",
                            Address:
                            "Sri CheluvaNarayana Swamy & Sri Yoganarasimha Swamy TemplePandavapura Taluk, Mandya Dist,Melukote - 571431",
                          )));
                },
                image: "assets/images/M.jpeg",
                title: "Melukote",
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
                          name: "Namdrolig Nyingmapa Monastery",
                          img: "assets/images/NNM.jpeg",
                          Overview: "At present, Namdroling Nyingmapa Monastery is the largest teaching centre of Nyingmapa, the lineage of Tibetan Buddhism in the world. The monastery belongs to the Sangha community and it is here that the teachings of Lord Buddha are preserved intact for worldwide propagation. It was founded by His Holiness Pema Norby Rinpoche in 1963 as the second seat of the Palyul monastery (one of the six great Tibet Nyingma Mother monasteries). The monastery is home to over 5,000 nuns and monks and also has a retreat centre where 30 monks have undergone an intensive three-year retreat.",
                          Address: "Namdrolig Nyingmapa Monastery",
                        ),
                      ));
                },
                image: "assets/images/NNM.jpeg",
                title: "Namdrolig Nyingmapa Monastery",
              ),
              homeCards(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Info(
                          name: "Nimishamba Temple",
                          img: "assets/images/NT.jpg",
                          Overview: "On the banks of River Cauvery, around 2 km away, stands the Nimishambha (Goddess Parvati's incarnation) Temple. Constructed by the then king of Mysore almost 400 years ago, it has the idols of Sri Nimishambadevi, with Sri Moukthikeshwara Swamy and Sri Lakshminarayana Swamy, as well as idols of the gods Surya Deva, Lord Ganapati, and Lord Hanuman. Goddess Nimishamba is an avatar of Goddess Parvati, and it is believed that she removes obstacles in a minute (Nimisha means minute in Kannada). Her idol is beautifully decorated, seen to be wearing jewellery, and garlands of roses. Srichakra is carved into the stone in front of the goddess's idol.",
                          Address: "SRI NIMISHAMBHA TEMPLE,Ganjam, Srirangapatna,Mandya Dist,KarnatakaPin Code - 571438",
                        ),
                      ));
                },
                image: "assets/images/NT.jpg",
                title: "Nimishamba Temple",
              ),
              homeCards(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Info(
                          name: "Thala Cauvery",
                          img: "assets/images/TK.jpg",
                          Overview: "A famous pilgrim centre and an equally popular picnic spot is Thala Cauvery from where River Cauvery originates. It is nestled in the Brahmagiri Hills near Coorg. Sitting at a height of more than 1,250 m, it offers excellent views of the valley and the river below during the monsoon season. On the day of Cauvery Changrandi (the first day of the Tula Masa) in October, thousands of pilgrims come to Thala Cauvery to witness the spout of water that gushes up from a spring. Goddess Kaveramma is the main deity of the temple here, along with Maha Ganpathi and Lord Agasthiswara. The temple located at the confluence of the Kabini and Kaveri rivers, and the Spatika sarovara (known as Tirumakudalu Narasipura) is also dedicated to Lord Agasthiswara.",
                          Address: "Sri Bhagandeshwara - Talacauvery Temple,Bhagamandala, Madikeri Taluk,Coorg District - 571247.",
                        ),
                      ));
                },
                image: "assets/images/TK.jpg",
                title: "Thala Cauvery",
              ),
              homeCards(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Info(
                          name: "Ranganathaswamy Temple",
                          img: "assets/images/ST.jpg",
                          Overview: "Dedicated to Lord Vishnu, the Ranganathaswamy Temple is one of the most significant sites in the town of Srirangapatna, located on the periphery of the city. In fact, the name of the town has also been derived from the temple. The presiding deity is worshipped as Lord Ranganatha. The idol of the god is seen resting on a bed of the serpent Aadi Sesha, who has seven heads and is often portrayed as a companion of Lord Vishnu. The shrine is believed to be among the eight self-manifested idols of the lord. One of the largest temples in the country, it is sprawled over an area of 156 acre and boasts over seven enclosures and 21 grand towers. It is situated on an island formed by Rivers Coleroon and Cauvery. The temple sees a huge footfall during the 21-day annual festival held in December and January.It also finds mention in Tamil literature during the Sangam era, inscriptions on the walls of a 10th century AD temple and the epic Silapadikaram.",
                          Address: "Sri Ranganatha Swamy Temple,Srirangapatna-571 438 Mandya Dist.",
                        ),
                      ));
                },
                image: "assets/images/ST.jpg",
                title: "Ranganathaswamy Temple",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
