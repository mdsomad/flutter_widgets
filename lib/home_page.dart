import 'package:flutter/material.dart';





class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:AppBar(
          title: Text("Transform Widget Use"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [

            Transform.rotate(
              angle: 1,
              origin: Offset(100,100),
              child: Container(
              height: 100,
              width: 100,
              color: Colors.pink,
            ),
          ),


          Transform.scale(
            scale:0.5 ,
            origin: Offset(100,0),
            child: Container(
              height: 100,
              width: 100,
              color: Colors.pink,
            ),
          ),



          Transform.translate(             // <-- isase position change kar sakte hai
           offset: Offset(100,-30),
            child:Container(
              height: 100,
              width: 100,
              color: Colors.green,
            ), 
            ),
          



            Transform(                                                               // <-- All in one use
              transform: Matrix4.skewX(0.3)..translate(70.0,10.0)..rotateZ(5),
              child: Container(
              height: 100,
              width: 100,
              color: Colors.purple,
            ),
            )


          ],
        )
    );
  }
}