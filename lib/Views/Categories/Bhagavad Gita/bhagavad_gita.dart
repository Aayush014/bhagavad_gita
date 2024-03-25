import 'dart:math';
import 'package:bhagavad_gita/Views/Categories/Bhagavad%20Gita/adhyay_screen.dart';
import 'package:flutter/material.dart';

class BhagavadGita extends StatefulWidget {
  const BhagavadGita({super.key});

  @override
  State<BhagavadGita> createState() => _BhagavadGitaState();
}

class _BhagavadGitaState extends State<BhagavadGita> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.orangeAccent.shade100,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
        title: Text(
          'श्रीमद भगवद गीता',
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            height: height / 3,
            width: width,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(100),
                  bottomRight: Radius.circular(100)),
              gradient: LinearGradient(
                colors: [Colors.yellow, Colors.orange],
              ),
            ),
            child: Stack(
              children: [
                Positioned(
                  left: 150,
                  child: Transform.rotate(
                    child: Container(
                      height: height / 4,
                      child: Image.asset('Assets/Images/mor_pankh.png'),
                    ),
                    angle: pi / 4,
                  ),
                ),
                Positioned(
                  top: 130,
                  left: 110,
                  child: Text(
                    '॥ गीता ॥',
                    style: TextStyle(
                        fontSize: 50, fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Container(
                  height: height/4,
                ),
                Column(
                  children: [
                    Container(
                      width: width/2.3,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: List.generate(
                          18,
                          (index) => GestureDetector(
                            onTap: () {
                              adhyayIndex = index;
                              Navigator.of(context).pushNamed('adhyay');
                            },
                            child: adhyay(
                              bg[0][index]['img'],
                              bg[0][index]['name'],
                              bg[0][index]['no'],
                              context
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: height/40,),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget adhyay(String i1, String a1, String n1,BuildContext context) {
  double height = MediaQuery.of(context).size.height;
  double width = MediaQuery.of(context).size.height;
  return Padding(
    padding: const EdgeInsets.only(
      top: 10,
      bottom: 10
    ),
    child: Container(
      height: height/8.5,
      width: width/2.5,
      decoration: BoxDecoration(
          color: Colors.orangeAccent, borderRadius: BorderRadius.circular(20)),
      child: Row(
        children: [
          Container(
            width: height/8.2,
            height: height/8.5,
            decoration: BoxDecoration(
              border: Border(
                right: BorderSide(color: Colors.white,),
              ),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                bottomLeft: Radius.circular(20),
              ),
              color: Colors.orangeAccent,
            ),
            child: Image.asset(i1),
          ),
          Container(
            width: width/3.6,
            height: height/8.5,
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      n1,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      ' अध्याय',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                SizedBox(height: 11,),
                FittedBox(
                  alignment: Alignment.center,
                  child: Text(
                    a1,
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

List bg =[
  [
    {
      "img": "Assets/Images/h1.png",
      "name": "अर्जुनविषादयोग",
      "no": "पहला"
    },
    {
      "img": "Assets/Images/h2.png",
      "name": "सांख्ययोग",
      "no": "दूसरा"
    },
    {
      "img": "Assets/Images/h3.png",
      "name": "कर्मयोग",
      "no": "तीसरा"
    },
    {
      "img": "Assets/Images/h4.png",
      "name": "ज्ञानकर्मसंन्यासयोग",
      "no": "चौथा"
    },
    {
      "img": "Assets/Images/h1.png",
      "name": "कर्मसंन्यासयोग",
      "no": "पांचवां"
    },
    {
      "img": "Assets/Images/h2.png",
      "name": "आत्मसंयमयोग",
      "no": "छठा"
    },
    {
      "img": "Assets/Images/h3.png",
      "name": "ज्ञानविज्ञानयोग",
      "no": "सातवाँ"
    },
    {
      "img": "Assets/Images/h4.png",
      "name": "अक्षरब्रह्मयोग",
      "no": "आठवाँ"
    },
    {
      "img": "Assets/Images/h1.png",
      "name": "राजविद्याराजगुह्योग",
      "no": "नौवां"
    },
    {
      "img": "Assets/Images/h2.png",
      "name": "विभूतियोग",
      "no": "दसवां"
    },
    {
      "img": "Assets/Images/h3.png",
      "name": "विश्वरूपदर्शनयोग",
      "no": "ग्यारहवाँ"
    },
    {
      "img": "Assets/Images/h4.png",
      "name": "भक्तियोग",
      "no": "बारहवां"
    },
    {
      "img": "Assets/Images/h1.png",
      "name": "क्षेत्र-क्षेत्रज्ञविभागयोग",
      "no": "तेरहवां"
    },
    {
      "img": "Assets/Images/h2.png",
      "name": "गुणत्रयविभागयोग",
      "no": "चौदहवां"
    },
    {
      "img": "Assets/Images/h3.png",
      "name": "पुरुषोत्तमयोग",
      "no": "पंद्रहवां"
    },
    {
      "img": "Assets/Images/h4.png",
      "name": "दैवासुरसम्पद्विभागयोग",
      "no": "सोलहवां"
    },
    {
      "img": "Assets/Images/h1.png",
      "name": "श्रद्धात्रयविभागयोग",
      "no": "सत्रहवाँ"
    },
    {
      "img": "Assets/Images/h2.png",
      "name": "मोक्षसंन्यासयोग",
      "no": "अठारहवाँ"
    }
  ]
];
