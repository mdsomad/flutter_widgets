import 'package:flutter/material.dart';






class ButtonBarScreen extends StatefulWidget {
  const ButtonBarScreen({Key? key}) : super(key: key);

  @override
  State<ButtonBarScreen> createState() => _ButtonBarScreenState();
}

class _ButtonBarScreenState extends State<ButtonBarScreen> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("ButtonBar Example"),
      ),

      
      body: ButtonBar(

        // alignment:MainAxisAlignment.spaceEvenly,
        // mainAxisSize: MainAxisSize.max,
        // mainAxisSize: MainAxisSize.min,
        overflowDirection: VerticalDirection.up,
        overflowButtonSpacing: 10,
        buttonPadding: EdgeInsets.all(100),
        
        children: [
          ElevatedButton(onPressed: (){}, child: Text("ok")),
          ElevatedButton(onPressed: (){}, child: Text("Cancel")),
          ElevatedButton(onPressed: (){}, child: Text("Done This")),
          ElevatedButton(onPressed: (){}, child: Text("Another BUtton")),
        ]
      ),
      
      
      
      
    );    
  }
}