import 'package:flutter/material.dart';
import 'package:flutter_widgets/LoginPage.dart';

main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Login UI Design",
      home:loginpage() ,
    );
  }
}