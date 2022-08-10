// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';



class VideoPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.green,
      child: Center(
        child: Text("Videos Page",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold)),),
    );
  }
}