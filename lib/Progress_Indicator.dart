// ignore_for_file: prefer_const_constructors
import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Progress_Indicator extends StatefulWidget {
  @override
  State<Progress_Indicator> createState() => _ProgressIndicatorState();
}

class _ProgressIndicatorState extends State<Progress_Indicator> {
  double _initial = 0.0;

  void update() {
    // <-- Method Create
    Timer.periodic(Duration(milliseconds: 60), (timer) {
      setState(() {
        _initial = _initial + 0.2;
      });
    });
  }

  Widget _stapIndicator() {      // <-- Widget Create

    String value = (_initial * 5).toString()[0];

    return Column(
      children: [
        Text("Steps $value of 5 completed"),
        SizedBox(
          height: 25,
        ),
        LinearProgressIndicator(
          value: _initial,
          backgroundColor: Colors.black,
          minHeight: 25,
          valueColor: AlwaysStoppedAnimation(Colors.blue),
        ),
        SizedBox(
          height: 25,
        ),
        TextButton(
            onPressed: () {
              setState(() {
                _initial = _initial + 0.2;
              });
            },
            child: Text("Next"),
            style: TextButton.styleFrom(
              backgroundColor: Colors.purple
            ),
            )
      ],
    );
  }




  @override
  Widget build(BuildContext context) {
    // update();   // <-- Method call

    return Scaffold(
        appBar: AppBar(
          title: Text("ProgressIndicato Using"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // mainAxisSize: MainAxisSize.max,
            children: [
              _stapIndicator()  // <-- Widget Create call

              // LinearProgressIndicator(
              //   value: _initial,
              //   backgroundColor: Colors.black,
              //   minHeight: 25,
              //   valueColor: AlwaysStoppedAnimation(Colors.blue),
              // ),

              // SizedBox(
              //height: 20,
              //),

              // CircularProgressIndicator(
              //   backgroundColor: Colors.black,
              //   value: _initial,
              // )
            ],
          ),
        ));
  }
}
