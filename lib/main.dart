import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Image_picker.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Widgets",
      home:MyHomePage(),
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
