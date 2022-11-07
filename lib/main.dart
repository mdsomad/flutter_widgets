// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_widgets/phone_storage_video_paly/addVideo.dart';
import 'package:flutter_widgets/video%20pleyr.dart';




// Add dependencies package -->  ( video_player: ^2.4.5 )
// Add dependencies package -->  ( image_picker: ^0.8.6 )






void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Widgets",
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.teal
      ),
      
     darkTheme: ThemeData(
      brightness: Brightness.dark
     ),

     initialRoute: 'Network video Paly',
     
     
     routes: {
      "downloaded video paly":(context) => addVideoScreen(),
      'Network video Paly':(context) => videopleyr()
     },

    );
  }
}
