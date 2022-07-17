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
      bottomNavigationBar:BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        backgroundColor: Colors.pink,
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.blue,
        selectedLabelStyle: textTheme.caption,
        unselectedLabelStyle: textTheme.caption,
        onTap: (val){
            setState(() {
              _currentIndex =val;
            });
        },
        items: [
            BottomNavigationBarItem(
              label: "Home",
              icon:Icon(CupertinoIcons.home)),

            BottomNavigationBarItem(
              label: "Places",
              icon: Icon(Icons.location_on)),
              
               BottomNavigationBarItem(
               label: 'Favorites',
            icon: Icon(Icons.favorite),
          ),
            BottomNavigationBarItem(
              label: "Video",
              icon: Icon(Icons.ondemand_video)),

            BottomNavigationBarItem(
              label: "Music",
              icon: Icon(Icons.music_note))
      ]) ,
      
      
      body: Container(
          child: Center(child: Text("Bottom navigation complite",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),))
      ),
    );
  }
}