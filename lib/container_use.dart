// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';


class container extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         title: Text("Flutter Widget"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          
          Container(
            height: 150,
            width: 150,
            decoration: BoxDecoration(           // <-- This gradient Color Add Container Code
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomLeft,
              colors:[
                Colors.red,
                Colors.green
                ])
            ),
            child: Center(child: Text("Gradient Color Use")),
          ),


          Center(
            child: Container(
              height: 300,
              width: 300,

              transform: Matrix4.rotationZ(.2),      // <-- Yah Container ka rooted karta hai

              margin: EdgeInsets.only(
                left: 30.0,
                top: 40.0
              ),

              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.only(     // <-- Yah Code Container ko circular karta hai
                  topLeft: Radius.circular(10.0),
                  bottomRight: Radius.circular(20.0)
                ),

                border: Border.all(            // <-- Yah code Container Mein Border deta hai
                  color: Colors.red,
                  width: 10,
                  
                ),

                image: DecorationImage(           // <-- Image add Method
                  fit: BoxFit.cover,
                  image:NetworkImage("https://images.pexels.com/photos/371985/pexels-photo-371985.jpeg?cs=srgb&dl=pexels-pixabay-371985.jpg&fm=jpg")
                   ),


                boxShadow: [                   // <-- Yah Code Container Mein BoxShadow Deta hai
                  BoxShadow(
                    color: Colors.green,
                   blurRadius: 100
                  )
                ]


              ),
              
              
               child: Center(child: Text("Contaner Decoration")),

            ),
          ),
        ],
      ),
    );
  }
}