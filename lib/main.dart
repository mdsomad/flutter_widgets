// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'homepage.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';




void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(MyApp());
}


class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Widgets",
      theme: ThemeData(
        primarySwatch: Colors.pink
      ),
      home:MyHomePage() ,
      
    );
  }
}







