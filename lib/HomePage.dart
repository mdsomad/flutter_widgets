// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

class homepage extends StatelessWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
        body: CustomScrollView(
      slivers: [

        SliverAppBar(
          pinned: true,
          floating: true,
          expandedHeight: 150,
          flexibleSpace: FlexibleSpaceBar(
            title: Text("SliverAppBar Using"),
            background: Image.asset(
              "assets/avenue.webp",
              fit: BoxFit.fill,
            ),
          ),
        ),

        SliverList(
            delegate: SliverChildListDelegate([
          Card(
            child: Container(
              height: 200,
              width: double.infinity,
              color: Colors.red,
            ),
          ),
          Card(
            child: Container(
              height: 200,
              width: double.infinity,
              color: Colors.purple,
            ),
          ),
          Card(
            child: Container(
              height: 200,
              width: double.infinity,
              color: Colors.green,
            ),
          ),
          Card(
            child: Container(
              height: 200,
              width: double.infinity,
              color: Colors.yellow,
            ),
          ),
          Card(
            child: Container(
              height: 200,
              width: double.infinity,
              color: Colors.pink,
            ),
          ),
          Card(
            child: Container(
              height: 200,
              width: double.infinity,
              color: Colors.red,
            ),
          ),
          Card(
            child: Container(
              height: 200,
              width: double.infinity,
              color: Colors.purple,
            ),
          ),
          Card(
            child: Container(
              height: 200,
              width: double.infinity,
              color: Colors.green,
            ),
          ),
          Card(
            child: Container(
              height: 200,
              width: double.infinity,
              color: Colors.yellow,
            ),
          ),
          Card(
            child: Container(
              height: 200,
              width: double.infinity,
              color: Colors.pink,
            ),
          ),
        ]))
      ],
    ));
  }
}
