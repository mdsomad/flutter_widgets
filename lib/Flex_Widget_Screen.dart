import 'package:flutter/material.dart';






class FlexWidgetScreen extends StatefulWidget {
  const FlexWidgetScreen({Key? key}) : super(key: key);

  @override
  State<FlexWidgetScreen> createState() => FlexWidgetScreenState();
}

class FlexWidgetScreenState extends State<FlexWidgetScreen> {



  int index = 0;
  
  
  
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Flex Widget Example"),
      ),

      
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,

        child: Flex(
          direction: Axis.horizontal,    //* <-- Required Axis direction
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            Container(
              height: 100,
              width: 100,
              color: Colors.red,
              child: Center(child: Text("Container 1")),
            ),

            Container(
              height: 100,
              width: 100,
              color: Colors.green,
              child: Center(child: Text("Container 2")),
            ),

            Container(
              height: 100,
              width: 100,
              color: Colors.yellow,
              child: Center(child: Text("Container 3")),
            )



          ],

        ),
      )
      





      
    );    
  }
}