// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';





class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('LayoutBuilder Example')),

    
      body: LayoutBuilder(              // <-- Yah Widgwt Multiple Screen size ke according responsive banata hai           
      
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth > 900) {
            return _buildWideContainersDestop();        // <-- Yah hai Destap mode
          }
          else if(constraints.maxWidth>600){
            return _buildWideContainerstablet();       // <-- Yah hai Tablet mode
          }
           else {
            return _buildNormalContainerMobile();      // <-- Yah hai Mobile mode
          }
        },
      ),
    );
  }



  Widget _buildNormalContainerMobile() {         // <-- Yah Create Custom Widget Mobile view return karta hai
    return Center(
      child: Container(
        height: 100.0,
        width: 100.0,
        color: Colors.red,
      ),
    );
  }




  Widget _buildWideContainerstablet() {        // <-- Yah  Create Custom Widget desktop view return karta hai
    return Center(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Text(MediaQuery.of(context).size.width.toString()),   // <-- Yah Screen size show karta hai
        Container(
          height: 100.0,
          width: 100.0,
          color: Colors.red,
        ),
        Container(
          height: 100.0,
          width: 100.0,
          color: Colors.yellow,
        ),
      ],
    ));
  }


  Widget _buildWideContainersDestop() {        // <-- Yah  Create Custom Widget desktop view return karta hai
    return Center(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Text(MediaQuery.of(context).size.width.toString()),   // <-- Yah Screen size show karta hai
        Container(
          height: 100.0,
          width: 100.0,
          color: Colors.red,
        ),
        Container(
          height: 100.0,
          width: 100.0,
          color: Colors.yellow,
        ),
        Container(
          height: 100.0,
          width: 100.0,
          color: Colors.green,
        ),
      ],
    ));
  }
}

