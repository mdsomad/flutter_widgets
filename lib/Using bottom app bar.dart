// ignore_for_file: prefer_const_constructors
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class MyHomePage extends StatefulWidget {


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

 int _currentIndex = 0;

  
  
  
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        title: Text("Using Bottom navigation"),
      ),
      bottomNavigationBar:BottomAppBar(
        color: Colors.pink,
          child: Row(
            children: [
              IconButton(onPressed: (){}, icon:Icon(Icons.menu)),
              Spacer(),
              IconButton(onPressed: (){}, icon:Icon(Icons.search)),
              IconButton(onPressed: (){}, icon:Icon(Icons.more_vert)),
            ],
          ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(onPressed: (() {}),
      child:Icon(Icons.add),
      ),
      body: Container(
          child: Center(child: Text("Bottom app bar complite",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),))
      ),
    );
  }
}