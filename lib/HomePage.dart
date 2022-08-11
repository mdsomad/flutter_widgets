// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_widgets/pages/page4.dart';
import 'package:flutter_widgets/pages/page5.dart';
import 'package:flutter_widgets/pages/page1.dart';
import 'package:flutter_widgets/pages/page3.dart';

import 'pages/page2.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int photo = 0;

  static List<Widget> _widgetOptions = <Widget>[       // <-- First Create ( List ) <-- iska kaam hai Pages ko display karta hai
    
    Page1(),
    Page2(),
    Page3(),
    Page4(),
    Page5()
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
          title: Text("Using CustomButtons Example"),
        ),

        body: Container(
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            SizedBox(
              height: 10,
            ),
            CustomButtons(),
            Expanded(
              child: Container(
              child: _widgetOptions.elementAt(photo),   // <-- Call List Widget  (Widget Name Yah --> _widgetOptions )
            ))
          ]),
        ) 

        
        
        //       
      );  // Scaffold


  }




  Widget CustomButtons() {                      //  <--Create Custom Widget
    List imagelist = [
      photo == 0 ? "assets/a2.png" : "assets/a1.png",
      photo == 1 ? "assets/b2.png" : "assets/b1.png",
      photo == 2 ? "assets/c2.png" : "assets/c1.png",
      photo == 3 ? "assets/d2.png" : "assets/d1.png",
      photo == 4 ? "assets/e2.png" : "assets/e1.png"
    ];

    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: List.generate(imagelist.length, (index) {
          return IconButton(
              onPressed: () {
                setState(() {
                  photo = index;
                  print(index);
                });
              },
              icon: Image.asset(imagelist[index]));
          }
       )  // List.generate
    ); // Row
  }

  
  
  
  
  
  
  
}
