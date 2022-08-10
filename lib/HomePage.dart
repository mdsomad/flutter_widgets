// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';



class RadioList_Tile extends StatefulWidget {

  @override
  State<RadioList_Tile> createState() => _RadioList_TileState();
}

class _RadioList_TileState extends State<RadioList_Tile> {

  var isValue;
  Color isColoer = Colors.black87;
  
  
  @override
  Widget build(BuildContext context) {
    print(isValue);

    return Scaffold(
      appBar: AppBar(
        title: Text("RadioListTile Using Example"),
      ),

      body: Container(
      child: Column(
        children: [

          Icon(Icons.lightbulb_rounded,size: 150,
                    color: isColoer,
              ),


            RadioListTile(
              title: Text("Value 1"),
              subtitle: Text("Red"),
              activeColor: Colors.pink,
              value: 1, groupValue: isValue, onChanged: ((value) {
              setState(() {
                isValue =value;
                isColoer = Colors.red;
              });
            })),


            RadioListTile(
              title: Text("Value 2"),
              subtitle: Text("Green"),
              activeColor: Colors.pink,
              value: 2, groupValue: isValue, onChanged: ((value) {
              setState(() {
                isValue =value;
                isColoer = Colors.green;
              });
            })),



            RadioListTile(
              title: Text("Value 3"),
              subtitle: Text("Yellow"),
              activeColor: Colors.pink,
              value: 3, groupValue: isValue, onChanged: ((value) {
              setState(() {
                isValue =value;
                isColoer = Colors.yellow;
              });
            }))

         ],
       ),
      ),



    );
  }
}