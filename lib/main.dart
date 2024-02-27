import 'package:bhagavad_gita/Views/Categories/bhagavad_gita.dart';
import 'package:bhagavad_gita/Views/Categories/gita_aarti.dart';
import 'package:bhagavad_gita/Views/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/' : (context) => HomePage(),
        'gita1' : (context) => BhagavadGita(),
      },
    );
  }
}