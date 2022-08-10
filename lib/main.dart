import 'package:flutter/material.dart';
import 'HomePage.dart';




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
      home:RadioList_Tile(),
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.purple
      ),
      
     darkTheme: ThemeData(
      brightness: Brightness.dark
     ),
    );
  }
}
