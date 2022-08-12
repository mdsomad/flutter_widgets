// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';




class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isValue = false;
  bool isValue2 = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CheckboxListTile Using Example"),
      ),


      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: CheckboxListTile(
                  title: Text("CheckBox"),
                  subtitle: Text(
                    "$isValue",
                    style: TextStyle(color: Colors.red),
                  ),
                  activeColor: Colors.green,
                  checkColor: Colors.pink,
                  selected: true,                 // <-- title Colors show 
                  shape: Border.symmetric(
                      horizontal: BorderSide(color: Colors.red, width: 5),
                      vertical: BorderSide(color: Colors.black, width: 5)),
                  value: isValue,
                  onChanged: ((value) {
                    setState(() {
                      isValue = value!;
                    });
                  })),
            ),


            Padding(
              padding: const EdgeInsets.all(10.0),
              child: CheckboxListTile(
                  title: Text("CheckBox 2"),
                  subtitle: Text(
                    "$isValue2",
                    style: TextStyle(color: Colors.red),
                  ),
                  selected: false,               // <-- title Colors Not Show
                  value: isValue2,
                  onChanged: ((value) {
                    setState(() {
                      isValue2 = value!;
                    });
                  })),
            ),
          ],
        ),
      ),



    );
  }
}
