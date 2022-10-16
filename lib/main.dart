import 'package:flutter/material.dart';
import 'Popup_Menu_Button.dart';




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
     home: Popup_Menu_Button(),
     
    );
  }
}
