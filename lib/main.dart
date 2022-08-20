import 'package:flutter/material.dart';
import 'package:flutter_widgets/homepage.dart';

main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Login UI Design",
      theme: ThemeData(
        primarySwatch: Colors.teal
      ),

      home:HomePage() ,
    );
  }
}