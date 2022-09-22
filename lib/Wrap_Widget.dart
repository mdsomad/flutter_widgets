import 'package:flutter/material.dart';

class Wrap_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Wrap Widget use"),
      ),
      body: Container(
          child: Wrap(
        children: [
          Container(
            height: 100,
            width: 100,
            color: Colors.red,
          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.green,
          ),
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
            color: Colors.purple,
          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.grey,
          ),
        ],
      )),
    );
  }
}
