// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';



class Circle_Avatar extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Circle Avatar Use"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
              Center(
                child: CircleAvatar(
                  radius: 60,
                  backgroundColor: Colors.red,
                  backgroundImage: NetworkImage('https://images.pexels.com/photos/874158/pexels-photo-874158.jpeg?cs=srgb&dl=pexels-andrea-piacquadio-874158.jpg&fm=jpg'),
                ),
              )
          ],
        ),
    );
  }
}