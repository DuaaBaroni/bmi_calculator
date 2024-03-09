// ignore_for_file: prefer_const_constructors

import 'package:bmi_calculator/bmi_calculator/home_view.dart';
import 'package:bmi_calculator/bmi_calculator/result.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}
 
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(useMaterial3: true),
      home: HomeView(

      ),
    );
  }
  
 
}