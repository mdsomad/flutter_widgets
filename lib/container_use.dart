import 'package:flutter/material.dart';


class container extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         title: Text("Flutter Widget"),
      ),
      body: Container(
        child: Center(child: Text("Contaner")),
      ),
    );
  }
}