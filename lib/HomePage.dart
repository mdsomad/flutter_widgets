import 'package:flutter/material.dart';


class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
       return Scaffold(
        appBar: AppBar(
          title: Text("Inkwell widgets explain "),
        ),
        body: Center(child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: (() {
                  print('Tap');
              }),
              onDoubleTap: () {
                print("Double Tap");
              },

              onTapDown: (details) {
                 print("Tap down");
              },
             
             onTapUp: (details) {
               print("Tap Up");
             },
              child: Container(
                height: 200,
                width: 200,
                color: Colors.red,
              ),
            ),

            
            
            
        ]),)
       );
  }
}