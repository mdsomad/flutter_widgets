// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';



class FavoritePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.yellow,
      child: Center(
        child: Text("Favorite Page",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),),
    );
  }
}