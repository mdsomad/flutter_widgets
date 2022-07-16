import 'package:flutter/material.dart';



class RadioButton extends StatefulWidget {

  @override
  State<RadioButton> createState() => _RadioButtonState();
}

class _RadioButtonState extends State<RadioButton> {

  Color _bulpColor = Colors.black;
  var colorGroupValue;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Custom Switches Uses"),
      ),
      body: Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           Icon(Icons.lightbulb_rounded,size: 150,
                    color: _bulpColor,
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 150,
                child: Row(children: [
                  Radio(
                    activeColor: Colors.purple,
                    value: 'Red', groupValue:colorGroupValue , onChanged: (value){
                      setState(() {
                      colorGroupValue = value;
                      _bulpColor = Colors.red;
                    });
                }),
                Text("Green Color")
                ],)
              ),
              Container(
                width: 150,
                child: Row(children: [
                  Radio(value: 'green', groupValue:colorGroupValue , onChanged: (value){
                      setState(() {
                      colorGroupValue = value;
                      _bulpColor = Colors.green;
                    });
                }),
                Text("Green Color")
                ],)
              ),
              Container(
                width: 150,
                child: Row(children: [
                  Radio(value: 'Blue', groupValue:colorGroupValue , onChanged: (value){
                    setState(() {
                      colorGroupValue = value;
                      _bulpColor = Colors.blue;
                    });
                }),
                Text("Blue Color")
                ],)
              ),
              
        ]),
      ),
    )
    );
  }
}