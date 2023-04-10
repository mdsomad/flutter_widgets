import 'package:flutter/material.dart';






class InteractiveViewerScreen extends StatefulWidget {
  const InteractiveViewerScreen({Key? key}) : super(key: key);

  @override
  State<InteractiveViewerScreen> createState() => InteractiveViewerScreenState();
}

class InteractiveViewerScreenState extends State<InteractiveViewerScreen> {



  int index = 0;
  
  
  
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Interactive Viewer Example"),
      ),

      
      body: Center(

        child: ClipRect(
          child:InteractiveViewer(
            scaleEnabled: true,
            maxScale: 10,   //* <- Image Zoom in 
            minScale: 5,
            boundaryMargin: EdgeInsets.all(10),

            constrained: true,  //* <-- bye difficult yah true rahata hai (isko false karne se full screen image Cover Kar leta hai)

            child: Image.network('https://images.pexels.com/photos/219692/pexels-photo-219692.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2')),

          )
      ),
      





      
    );    
  }
}