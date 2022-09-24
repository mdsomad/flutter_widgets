// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';




class divider extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Divider Use"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            SizedBox(height: 100,),

            Divider(color: Colors.black,thickness: 5,),   // <-- Yah Divider Horizontal direction Mein Line deta hai

            SizedBox(       // <-- SizeBox Use height requirrd
              height: 100,
              child: VerticalDivider(color: Colors.red,thickness: 3,),      // <-- Yah Divider Vertical direction Mein Line deta hai
            ),

          ],
        ),
    );
  }
}