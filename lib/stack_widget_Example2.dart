// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';





class Stack_Example2 extends StatelessWidget {
  const Stack_Example2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stack Example2 Using"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,

        children: [
          SizedBox(
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: 200,
                  height: 200,
                  color: Colors.red,
                ),
                Container(
                  width: 180,
                  height: 180,
                  color: Colors.green,
                ),
                Positioned(
                 
                  right: 60,
                  child:Text("Hello Soamd"))
              ],
            ),
          )

          
        ]),
    );
  }
}