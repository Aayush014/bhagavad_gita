import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Utils/global.dart';

class GitasaarScreen extends StatefulWidget {
  const GitasaarScreen({super.key});

  @override
  State<GitasaarScreen> createState() => _GitasaarScreenState();
}

class _GitasaarScreenState extends State<GitasaarScreen> {

  int index = 0;

  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color(0xffFADFAA),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
        title: Text(
          'श्रीमद भगवद गीता',
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: Center(
        child: Stack(
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
                  SizedBox(
                    height: 180,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Container(
                      width: 400,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 20),
                            child: Container(
                              width: 380,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Column(
                                children: List.generate(
                                  data[1]['bhaags'].length,
                                      (index) => buildContainer(index),
                                ),
                              ),
                            ),
                          ),
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
    );
  }
  Widget buildContainer(int index) {
    double height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Container(
          padding: EdgeInsets.all(10),
          width: double.infinity,
          decoration: BoxDecoration(
              color: Colors.orangeAccent,
              borderRadius: BorderRadius.all(Radius.circular(8)),
              border: Border(bottom: BorderSide(width: 10))),
          child: Column(
            children: [
              Text(
                data[1]['bhaags'][index]['id'],
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: height / 55,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  data[1]['bhaags'][index]['name'],
                  style: TextStyle(
                    fontSize: height / 40,
                    fontWeight: FontWeight.w300,
                    color: Colors.black,
                  ),
                ),
              ),
              Text(
                data[1]['bhaags'][index]['meaning'],
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
            ],
          )),
    );
  }
}