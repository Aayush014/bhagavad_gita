import 'dart:math';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.orangeAccent.shade100,
      appBar: AppBar(
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
            child: Column(
              children: [
                Container(
                  height: height / 4,
                ),
                Container(
                  height: height / 1.7,
                  width: width / 2.4,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            Navigator.of(context).pushNamed('gita1');
                          });
                        },
                        child: Container(
                          height: height / 8,
                          width: width / 2.6,
                          decoration: BoxDecoration(
                              color: Colors.orangeAccent,
                              borderRadius: BorderRadius.circular(20)),
                          child: Row(
                            children: [
                              Container(
                                width: width / 8,
                                decoration: BoxDecoration(
                                  border: Border(
                                    right:
                                        BorderSide(color: Colors.white),
                                  ),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    bottomLeft: Radius.circular(20),
                                  ),
                                  color: Colors.orangeAccent,
                                ),
                                child:
                                    Image.asset('Assets/Images/h1.png'),
                              ),
                              Container(
                                width: width / 3.9,
                                alignment: Alignment.center,
                                child: Text(
                                  'भगवद गीता',
                                  style: TextStyle(
                                      fontSize: 35,
                                      fontWeight: FontWeight.w600),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            Navigator.of(context).pushNamed('gSar');
                          });
                        },
                        child: Container(
                          height: height / 8,
                          width: width / 2.6,
                          decoration: BoxDecoration(
                              color: Colors.orangeAccent,
                              borderRadius: BorderRadius.circular(20)),
                          child: Row(
                            children: [
                              Container(
                                width: width / 8,
                                decoration: BoxDecoration(
                                  border: Border(
                                    right:
                                        BorderSide(color: Colors.white),
                                  ),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    bottomLeft: Radius.circular(20),
                                  ),
                                  color: Colors.orangeAccent,
                                ),
                                child:
                                    Image.asset('Assets/Images/h2.png'),
                              ),
                              Container(
                                width: width / 3.9,
                                alignment: Alignment.center,
                                child: Text(
                                  'गीता सार',
                                  style: TextStyle(
                                      fontSize: 35,
                                      fontWeight: FontWeight.w600),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            Navigator.of(context).pushNamed('gMahatmya');
                          });
                        },
                        child: Container(
                          height: height / 8,
                          width: width / 2.6,
                          decoration: BoxDecoration(
                              color: Colors.orangeAccent,
                              borderRadius: BorderRadius.circular(20)),
                          child: Row(
                            children: [
                              Container(
                                width: width / 8,
                                decoration: BoxDecoration(
                                  border: Border(
                                    right:
                                        BorderSide(color: Colors.white),
                                  ),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    bottomLeft: Radius.circular(20),
                                  ),
                                  color: Colors.orangeAccent,
                                ),
                                child:
                                    Image.asset('Assets/Images/h3.png'),
                              ),
                              Container(
                                width: width / 3.9,
                                alignment: Alignment.center,
                                child: Text(
                                  'गीता माहात्म्य',
                                  style: TextStyle(
                                      fontSize: 35,
                                      fontWeight: FontWeight.w600),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            Navigator.of(context).pushNamed('gArti');
                          });
                        },
                        child: Container(
                          height: height / 8,
                          width: width / 2.6,
                          decoration: BoxDecoration(
                              color: Colors.orangeAccent,
                              borderRadius: BorderRadius.circular(20)),
                          child: Row(
                            children: [
                              Container(
                                width: width / 8,
                                decoration: BoxDecoration(
                                  border: Border(
                                    right:
                                        BorderSide(color: Colors.white),
                                  ),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    bottomLeft: Radius.circular(20),
                                  ),
                                  color: Colors.orangeAccent,
                                ),
                                child:
                                    Image.asset('Assets/Images/h4.png'),
                              ),
                              Container(
                                width: width / 3.9,
                                alignment: Alignment.center,
                                child: Text(
                                  'गीता आरती',
                                  style: TextStyle(
                                      fontSize: 35,
                                      fontWeight: FontWeight.w600),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
