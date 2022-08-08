// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';





class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Scroll View Using Example')),

      body: Column(
          children: [
            SizedBox(
              height: 75,
              child: ListView.builder(
                itemCount: 30,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {

                  return GestureDetector(
                    onTap: (() {
                      print("Hello");
                    }),

                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            color: Colors.green,
                             shape: BoxShape.circle),
                      ),
                    ),
                  );
                },
              ),
            ),
            
          ],
        )
    );



    
  }
}

