import 'package:flutter/material.dart';



class CheckBoxx extends StatefulWidget {
  

  @override
  State<CheckBoxx> createState() => _CheckBoxxState();
}

class _CheckBoxxState extends State<CheckBoxx> {
  var value1;
  
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
              Row(
                children: [
                    Checkbox(value: value1, onChanged:(val){
                        setState(() {
                          value1 = value1;
                        });
                    })
              ],)
        ]),
       )
    );
  }
}