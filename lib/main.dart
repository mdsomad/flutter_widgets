// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_widgets/Home_Page.dart';







void main()async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key ,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Widgets",

     home:HomePage() ,

       );
    }

}
