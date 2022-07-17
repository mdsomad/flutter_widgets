// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';



class MyHomePage extends StatefulWidget {


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool aa = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Using Container Button"),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
              Material(
                 color:aa?Colors.yellow: Colors.pink,
                 borderRadius: BorderRadius.circular(aa?100:0),
                child: InkWell(
                  onTap: (){
                    setState(() {
                      
                    });
                    aa = true;
                  },
                  child: AnimatedContainer(
                    duration: Duration(seconds: 2),
                    alignment: Alignment.center,
                          height: 50,
                          width: 100,
                          child: Text("Button",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
                        ),
                ),
              ),
        ],),
      )
    );
  }
}