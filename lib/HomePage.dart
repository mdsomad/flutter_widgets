// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  bool isSwitch = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Switch button using'),
      ),
      body: Container(
        color: Colors.yellow,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "$isSwitch",
                style: TextStyle(
                    color: isSwitch ? Colors.green : Colors.black,
                    fontSize: 20),
              ),
              SizedBox(
                height: 10,
              ),
              Switch(
                  activeColor: Colors.green,      // <-- yah true ka color hai     (Button on Color)
                  activeTrackColor: Colors.red,   // <-- yah2 true ka color hai    (Button on Color)
                  inactiveTrackColor:
                      Colors.purple,   // <-- yah false ka color hai   (Button Off Color)
                  inactiveThumbColor:
                      Colors.blue,    // <-- yah 2 false ka color hai   (Button Off Color)
                  value: isSwitch,
                  onChanged: (val) {
                    isSwitch = val;
                    setState(() {});
                  })
            ],
          ),
        ),
      ),
    );
  }
}
