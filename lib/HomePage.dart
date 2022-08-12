// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';


class homepage extends StatelessWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: Container(
        color: Colors.yellow,
        child: Center(
          child: Text("Welcome to Home Page"),
        ),
      ),
    );
  }
}