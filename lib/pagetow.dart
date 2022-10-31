import 'package:flutter/material.dart';


class PageTow extends StatelessWidget {
  const PageTow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page 2"),
      ),
     body: Column(
        children: [
          Hero(
            tag: "test",
            child: Image.asset('assets/test.jpeg')),
        ],
      ) ,
    );
  }
}