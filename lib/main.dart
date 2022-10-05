// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'home_page.dart';

// First Add package this --> ( font_awesome_flutter: ^10.2.15 )


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
        primarySwatch: Colors.green
      ),
      
     darkTheme: ThemeData(
      brightness: Brightness.dark
     ),

    home: HomePage(),
    );
  }
}
