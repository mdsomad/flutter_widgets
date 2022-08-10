// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.purple,
      child: Center(
        child: Text("Home Page",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold)),),
    );
  }
}