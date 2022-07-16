import 'package:flutter/material.dart';


class container extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         title: Text("Flutter Widget Column uses"),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color:Colors.blueAccent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment:CrossAxisAlignment.center,
          children: [
              Container(
                height: 100,
                width: 100,
                color: Colors.pink,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.yellow,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.green,
              ),
        ],)
      ),
    );
  }
}