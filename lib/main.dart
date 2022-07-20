// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_widgets/Progress_Indicator.dart';






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
      home:Progress_Indicator(),
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.teal
      ),
      
     darkTheme: ThemeData(
      brightness: Brightness.dark
     ),
    );
  }
}
