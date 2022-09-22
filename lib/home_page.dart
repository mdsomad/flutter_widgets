// ignore_for_file: prefer_const_constructors
import 'dart:ui';

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ConstrainedBox Using"),
      ),
      body: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(
              maxHeight: 200.0,
              minHeight: 150.0,
              maxWidth: 200.0,
              minWidth: 150.0),

          child: Container(
            height: 300.0,
            width: 300.0,
            color: Colors.pink,
            
            child: Center(
                child: FittedBox(
                  child: Text(
                              "TextDecoration Use",
                              style: TextStyle(
                    fontSize: 50,
                    decoration: TextDecoration.underline,  
                    decorationColor: Colors.green, 
                    decorationThickness: 2.0,                      // <-- TextDecoration Use
                    decorationStyle: TextDecorationStyle.dashed),
                            ),
                )),
          ),
        ),
      ),
    );
  }
}
