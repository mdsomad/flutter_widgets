// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';



class MyHomePage extends StatefulWidget {


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>with SingleTickerProviderStateMixin{

 
  late TabController _controller;

  @override
  void initState() {

    _controller = TabController(length: 4, vsync: this)
    ..addListener(() {
      setState(() {
        print(_controller.index);
      });
    });

    super.initState();
  }
  


  
  @override
  Widget build(BuildContext context) {
    return Scaffold(


      appBar: AppBar(
        title: Text("WhatsApp Clone TabBar Using"),

        // Actions using Example
        actions: [
          IconButton(icon: Icon(Icons.search),onPressed:((){})),
          IconButton(icon: Icon(Icons.more_vert), onPressed: () {}),
        ],


  

        // TabBar Using Example
        bottom: TabBar(

          controller: _controller,
          isScrollable: true,
          indicatorWeight: 4.0,
          unselectedLabelColor:Colors.white ,
          labelColor:Colors.red,
          indicatorColor: Colors.red,
          unselectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
          labelStyle:TextStyle(fontWeight: FontWeight.bold),
          labelPadding: EdgeInsets.symmetric(horizontal: 13,vertical: 0),


          tabs: [
              Tab(icon: Icon(Icons.photo_camera)),
              Container(
                width: 90,
                child: Tab(text: "CHATS")),
              Container(
                width: 90,
                child: Tab(text: "STATUS")),
              Container(
                width: 90,
                child: Tab(text: "CALLS")),
        ]),


      ),









          // TabBarView Using Example
           
      body:TabBarView(

        controller: _controller,

        children: [
          
            Center(child: Tab(text: "Camera",)),
            Center(child: Tab(text: "Chats",)),
            Center(child: Tab(text: "Status",)),
            Center(child: Tab(text: "Calls",)),

      ],)

    );
  }
}