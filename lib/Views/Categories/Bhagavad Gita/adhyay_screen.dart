import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../Utils/global.dart';


class ShlokScreen extends StatefulWidget {
  const ShlokScreen({super.key});

  @override
  State<ShlokScreen> createState() => _ShlokScreenState();
}

int shlokIndex = 0;

class _ShlokScreenState extends State<ShlokScreen> {


  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color(0xffFADFAA),
      appBar: AppBar(
        backgroundColor: Colors.black,
        automaticallyImplyLeading: false,
        title: Text(
          'श्रीमद भगवद गीता',
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: Stack(
        children: [
          Container(
            height: height/3,
            width: width,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(150),
                  bottomRight: Radius.circular(150)),
              gradient: LinearGradient(
                colors: [Colors.yellow, Colors.orange],
              ),
            ),
            child: Stack(
              children: [
                Positioned(
                  left : 150,
                  child: Transform.rotate(
                    child: Container(
                      height: height/4,
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
                SizedBox(height: 230,),
                Container(
                  width: 450,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        child: Container(
                          width: 450,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Column(
                            children: List.generate(
                              data[0]['Bhaags'][shlokIndex]['shloks'].length,
                                  (index) => buildContainer(index),
                            ),
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

Container buildContainer(int index) {
  return Container(
    margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 8),
    decoration: const BoxDecoration(
      color: Colors.orangeAccent,
      borderRadius: BorderRadius.all(Radius.circular(8)),
    ),
    child: Column(
      children: [
        if (index == 0)
          Padding(
            padding: const EdgeInsets.all(5),
            child: Text(
              data[0]['Bhaags'][shlokIndex]['id'],
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: const Color(0xFF2E2E2E),
              ),
            ),
          ),
        if (index == 0)
          Text(
            data[0]['Bhaags'][shlokIndex]['name'],
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w400,
              color: const Color(0xFF2E2E2E),
            ),
          ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Text(
            data[0]['Bhaags'][shlokIndex]['shloks'][index]['shlok'],
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w400,
              color: const Color(0xFF2E2E2E),
            ),
            textAlign: TextAlign.center,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Text(
            data[0]['Bhaags'][shlokIndex]['shloks'][index]['meaning'],
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w400,
              color: const Color(0xFF2E2E2E),
            ),
          ),
        ),
        Container(
          height: 40,
          width: 455,
          decoration: const BoxDecoration(
            color: Color(0xFF2F2D32),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(5),
              bottomRight: Radius.circular(5),
            ),
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'Copy',
                style: TextStyle(
                    color: Colors.amber,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
              Text(
                'Share',
                style: TextStyle(
                    color: Colors.amber,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}