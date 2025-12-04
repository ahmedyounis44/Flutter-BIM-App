import 'package:flutter/material.dart';
import 'package:flutterapp/Screens/home_screen.dart';
import 'package:flutterapp/Screens/result_screen.dart';

class BmiApp extends StatelessWidget {
  const BmiApp({super.key});

  @override
  Widget build(BuildContext context) {
     return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor:Color(0XFF1C2135)
      ),
      home: Homescreen() //ResultScreen()
      );
     
  }
}
