// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_widgets/pages/Music_page.dart';
import 'package:flutter_widgets/pages/Video_page.dart';
import 'package:flutter_widgets/pages/favorite_page.dart';
import 'package:flutter_widgets/pages/home_page.dart';

import 'pages/location_page.dart';



class MyHomePage extends StatefulWidget {
  
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

 int _currentIndex = 0;
 

 static List<Widget> _widgetOptions = <Widget>[         // <-- First Create ( List ) <-- iska kaam hai Pages ko display karta hai
       HomePage(),
       PlacesPage(),
       FavoritePage(),
       VideoPage(),
       MusicPage(),
       


 ];
  
  
  
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        title: Text("Using BottomNavigationBar"),
      ),



      bottomNavigationBar:BottomNavigationBar(        // <-- BottomNavigationBar Using Example
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
              activeIcon: Icon(Icons.home) ,
              icon:Icon(Icons.home_outlined),
              ),


            BottomNavigationBarItem(
              label: "Places",
              activeIcon: Icon(Icons.location_on) ,
              icon: Icon(Icons.location_on_outlined)
              ),
              

            BottomNavigationBarItem(
               label: 'Favorites',
               activeIcon: Icon(Icons.favorite) ,
            icon: Icon(Icons.favorite_outline),
          ),
            BottomNavigationBarItem(
              label: "Video",
              activeIcon: Icon(Icons.ondemand_video) ,
              icon: Icon(Icons.ondemand_video_outlined)
              ),


            BottomNavigationBarItem(
              label: "Music",
              activeIcon: Icon(Icons.music_note) ,
              icon: Icon(Icons.music_note_outlined)
              )
        ]
      ) ,
      
      



      body: _widgetOptions.elementAt(_currentIndex)    // <-- Call List Widget  (Widget Name This --> _widgetOptions )
    );
  }
}