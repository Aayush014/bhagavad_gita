import 'package:bhagavad_gita/Views/Categories/gita_aarti.dart';
import 'package:bhagavad_gita/Views/Categories/gita_mahatmya.dart';
import 'package:bhagavad_gita/Views/home_page.dart';
import 'package:flutter/material.dart';
import 'Views/Categories/Bhagavad Gita/adhyay_screen.dart';
import 'Views/Categories/Bhagavad Gita/bhagavad_gita.dart';
import 'Views/Categories/gita_sar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //initialRoute: 'gArti',
      routes: {
        '/' : (context) => HomePage(),
        'gita1' : (context) => BhagavadGita(),
        'gSar' : (context) => GitasaarScreen(),
        'gArti' : (context) => GitaArtiScreen(),
        'gMahatmya' : (context) => GitaMahatmyaScreen(),
        'shlok' : (context) => ShlokScreen(),
      },
    );
  }
}