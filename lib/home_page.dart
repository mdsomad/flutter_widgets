import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


  
  
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Selectable Text"),
        centerTitle:true,
      ),


      body: Container(
        child: SelectableText(
          "Hello! How are you When the widget has focus, it will prevent itself from disposing via its underlying The SelectableText widget displays a string of text with a single style. The string might break across multiple lines or might all be displayed on the same line depending on the layout constraints Hello! How are you When the widget has focus, it will prevent itself from disposing via its underlying The SelectableText widget displays a string of text with a single style. The string might break across multiple lines or might all be displayed on the same line depending on the layout constraints Hello! How are you When the widget has focus, it will prevent itself from disposing via its underlying The SelectableText widget displays a string of text with a single style. The string might break across multiple lines or might all be displayed on the same line depending on the layout constraints Hello! How are you When the widget has focus, it will prevent itself from disposing via its underlying The SelectableText widget displays a string of text with a single style. The string might break across multiple lines or might all be displayed on the same line depending on the layout constraints Hello! How are you When the widget has focus, it will prevent itself from disposing via its underlying The SelectableText widget displays a string of text with a single style. The string might break across multiple lines or might all be displayed on the same line depending on the layout constraints Hello! How are you When the widget has focus, it will prevent itself from disposing via its underlying The SelectableText widget displays a string of text with a single style. The string might break across multiple lines or might all be displayed on the same line depending on the layout constraints Hello! How are you When the widget has focus, it will prevent itself from disposing via its underlying The SelectableText widget displays a string of text with a single style. The string might break across multiple lines or might all be displayed on the same line depending on the layout constraints "
          ,
           style: TextStyle(fontWeight: FontWeight.bold,fontSize:20),
           textAlign: TextAlign.justify,
           showCursor: true,
           cursorWidth: 5,
           cursorColor: Colors.red,
           scrollPhysics: BouncingScrollPhysics(),
          //  maxLines: 5,

           onTap: (){
            log("Clicked Selected Text");
           },
        )
      ),
      
      
      
    );
  }











  
}



