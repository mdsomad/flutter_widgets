import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:developer' as devlog;
import 'package:logger/logger.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


  final logger = Logger();



  // * Customers Logs
  // final logger = Logger(
  //   printer: PrettyPrinter(
  //     methodCount: 2,        //* <-- Number of method calls to be displayed
  //     errorMethodCount: 8,   //* <-- Number of method calls if stacktrace is provided
  //     lineLength: 120,       //* <-- Width of the output
  //     colors: true,          //* <-- Colorful log messages
  //     printEmojis: true,     //* <-- Print an emoji for each log message
  //     printTime: false       //* <-- Should each log print contain a timestamp
  //   )
  // );
  
  
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Screen"),
      ),


      body: Container(
        child: Center(
          child: CupertinoButton(
            color: Colors.pink,
            onPressed: (){
               logger.v("Verbose log");
               logger.d("Debug log");
               logger.i("Info log \nJaanakaaree");
               logger.w("Warning log \nChetaavanee");
               logger.e("Error log \nGalatee");
               logger.wtf("What is terrible log \nKya Bhayaanak hai");
          }, child: Text("log") ),
        ),
      ),
      
      
      
    );
  }
}