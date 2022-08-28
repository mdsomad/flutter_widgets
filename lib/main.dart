// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_widgets/shared_preferences.dart';

import 'shared preferencess/shared_preferencess2.dart';




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
        primarySwatch: Colors.teal
      ),
      
     darkTheme: ThemeData(
      brightness: Brightness.dark
     ),
     initialRoute: "page2",
     routes: {
      "/":(context) => shared_preferencess(),
      "page2":(context) => shared_preferencess2()
     },
    );
  }
}
