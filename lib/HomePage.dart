import 'package:flutter/material.dart';
import 'package:flutter_widgets/sidebar_drawer.dart';



class MyHomePage extends StatelessWidget {
  const MyHomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      drawer: Sidebar_Drawer(),

      body: Container(
        child: Center(
          child: Text("Drawer Using",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.red),),
        ),
      ),
    );
  }
}