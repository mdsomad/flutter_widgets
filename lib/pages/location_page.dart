// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';



class PlacesPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.orange,
      child: Center(
        child: Text("location Page",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold)),),
    );
  }
}