import 'package:flutter/material.dart';






class SpacerScreen extends StatefulWidget {
  const SpacerScreen({Key? key}) : super(key: key);

  @override
  State<SpacerScreen> createState() => SpacerScreenState();
}

class SpacerScreenState extends State<SpacerScreen> {



  int index = 0;
  
  
  
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Spacer Widget Example"),
      ),

      
      body: Row(
        children: [

          Container(
            height: 60,
            width: 60,
            color: Colors.red,
            child: Center(child: Text("Container 1")),
          ),
           
          Spacer(),      //* <-- Spacer Ka by default flex value 1 rahata hai 

          Container(
            height: 60,
            width: 60,
            color: Colors.green,
            child: Center(child: Text("Container 2")),
          ),

          Spacer(flex: 3,),       //* <-- Spacer Ka by default flex value 1 rahata hai 

          Container(
            height: 60,
            width: 60,
            color: Colors.yellow,
            child: Center(child: Text("Container 3")),
          )



        ],

      )
      





      
    );    
  }
}