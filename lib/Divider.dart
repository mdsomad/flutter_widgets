// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';




class divider extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("TextSpan Use"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children:  [
            RichText(
              text: TextSpan(
                text: "Hello",
                style: Theme.of(context).textTheme.bodyText1?.copyWith(fontSize: 50),
                children: [
                  TextSpan(text: 'Saomd',style:
                  TextStyle(fontSize: 24,fontWeight: FontWeight.bold)),
                  
                  TextSpan(text: 'Wold',style: 
                  TextStyle(fontSize: 24,fontWeight: FontWeight.normal))
                ]

              )
              )

          ],
        ),
    );
  }
}