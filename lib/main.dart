// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_widgets/HomePage.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    // ignore: dead_code
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Widgets",
      home:Homepage(),

      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.pink
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark
      ),
    
      
    );
  }
}
