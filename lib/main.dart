// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_widgets/HomePage.dart';
import 'package:get/get.dart';

// First Add package locction --> pubspec.yaml / dependencies --> ( get: ^4.6.5 )

void main() async {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
       
    
    // ignore: dead_code
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Widgets",
      home:Homepage(),
  
      theme: ThemeData(
        primarySwatch: Colors.pink
      ),
    
      
    );
  }
}
