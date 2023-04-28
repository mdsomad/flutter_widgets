// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_widgets/CustomScrollView.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Widgets",
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.pink
      ),
      
     darkTheme: ThemeData(
      brightness: Brightness.dark
     ),

     home: CustomScrollViewWidget(),

    );
  }
}



