import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
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
      body: Column(
        children: [
          Container(
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Container(
                  height: 300,
                  width: 450,
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
                            height: 200,
                            child: Image.asset('Assets/Images/mor_pankh.png'),
                          ),
                          angle: pi / 4,
                        ),
                      ),
                      Positioned(
                        top: 150,
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
                Column(
                  children: [
                    Container(
                      height: 200,
                      width: 300,
                    ),
                    Container(
                      height: 530,
                      width: 370,
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
                              height: 110,
                              width: 310,
                              decoration: BoxDecoration(
                                  color: Colors.orangeAccent,
                                  borderRadius: BorderRadius.circular(20)),
                              child: Row(
                                children: [
                                  Container(
                                    width: 110,
                                    height: 110,
                                    decoration: BoxDecoration(
                                      border: Border(right: BorderSide(color: Colors.white),),
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        bottomLeft: Radius.circular(20),
                                      ),
                                      color: Colors.orangeAccent,
                                    ),
                                    child: Image.asset('Assets/Images/h1.png'),
                                  ),
                                  Container(
                                    width: 200,
                                    height: 110,
                                    alignment: Alignment.center,
                                    child: Text('भगवद गीता',style: TextStyle(fontSize: 35,fontWeight: FontWeight.w600),),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Container(
                            height: 110,
                            width: 310,
                            decoration: BoxDecoration(
                                color: Colors.orangeAccent,
                                borderRadius: BorderRadius.circular(20)),
                            child: Row(
                              children: [
                                Container(
                                  width: 110,
                                  height: 110,
                                  decoration: BoxDecoration(
                                    border: Border(right: BorderSide(color: Colors.white),),
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      bottomLeft: Radius.circular(20),
                                    ),
                                    color: Colors.orangeAccent,
                                  ),
                                  child: Image.asset('Assets/Images/h2.png'),
                                ),
                                Container(
                                  width: 200,
                                  height: 110,
                                  alignment: Alignment.center,
                                  child: Text('गीता सार',style: TextStyle(fontSize: 35,fontWeight: FontWeight.w600),),
                                )
                              ],
                            ),
                          ),
                          Container(
                            height: 110,
                            width: 310,
                            decoration: BoxDecoration(
                                color: Colors.orangeAccent,
                                borderRadius: BorderRadius.circular(20)),
                            child: Row(
                              children: [
                                Container(
                                  width: 110,
                                  height: 110,
                                  decoration: BoxDecoration(
                                    border: Border(right: BorderSide(color: Colors.white),),
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      bottomLeft: Radius.circular(20),
                                    ),
                                    color: Colors.orangeAccent,
                                  ),
                                  child: Image.asset('Assets/Images/h3.png'),
                                ),
                                Container(
                                  width: 200,
                                  height: 110,
                                  alignment: Alignment.center,
                                  child: Text('गीता माहात्म्य',style: TextStyle(fontSize: 35,fontWeight: FontWeight.w600),),
                                )
                              ],
                            ),
                          ),
                          Container(
                            height: 110,
                            width: 310,
                            decoration: BoxDecoration(
                                color: Colors.orangeAccent,
                                borderRadius: BorderRadius.circular(20)),
                            child: Row(
                              children: [
                                Container(
                                  width: 110,
                                  height: 110,
                                  decoration: BoxDecoration(
                                    border: Border(right: BorderSide(color: Colors.white),),
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      bottomLeft: Radius.circular(20),
                                    ),
                                    color: Colors.orangeAccent,
                                  ),
                                  child: Image.asset('Assets/Images/h4.png'),
                                ),
                                Container(
                                  width: 200,
                                  height: 110,
                                  alignment: Alignment.center,
                                  child: Text('गीता आरती',style: TextStyle(fontSize: 35,fontWeight: FontWeight.w600),),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}


