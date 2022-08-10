// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';



class MusicPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.blue,
      child: Center(
        child: Text("Music Page",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold)),),
    );
  }
}