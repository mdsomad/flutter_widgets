import 'package:flutter/material.dart';

class CheckBoxx extends StatefulWidget {
  const CheckBoxx({ Key? key }) : super(key: key);

  @override
  State<CheckBoxx> createState() => _CheckBoxxState();
}

class _CheckBoxxState extends State<CheckBoxx> {
  var value1 = false;
  var value2 = false;
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Icon(Icons.lightbulb_rounded,
             color: value2?Colors.green:Colors.black,
             size: 200,
             ),
             SizedBox(
              height: 20,
             ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                    Checkbox(
                      checkColor: Colors.white,
                      activeColor: Colors.yellow,
                      value: value1, onChanged:(val){
                        setState(() {
                          value1 = val!;
                        });
                    }),
                    Text("Yellow")
              ],),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                    Checkbox(
                      checkColor: Colors.pink,
                      activeColor: Colors.green,
                      value: value2, onChanged:(val){
                        setState(() {
                          print(val);
                          value2 = val!;
                        });
                    }),
                    Text("Green")
              ],)
        ]),
       ),
    );
  }
}