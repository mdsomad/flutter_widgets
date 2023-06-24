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
        title: Text("Material Banner"),
        centerTitle:true,
      ),


      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(32),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            minimumSize: Size.fromHeight(56),
            backgroundColor: Colors.pink,
            textStyle: TextStyle(fontSize: 20)
          ),
          onPressed: showBanner,
           child: Text("Show Banner")),
      ),
      
      
      
    );
  }




//TODO: Create showBanner function
void showBanner() => ScaffoldMessenger.of(context)
..removeCurrentMaterialBanner()
..showMaterialBanner(
  MaterialBanner(
    backgroundColor: Colors.pink,
    padding: EdgeInsets.all(24),
    leading: Icon(Icons.info,color: Colors.white,size: 32,),
    content: Text("Hello, I am a Material Banner!"),
    contentTextStyle: TextStyle(color: Colors.white,fontSize: 20),
    actions: [
      TextButton(
        style:TextButton.styleFrom(foregroundColor: Colors.white),
         child: Text("SET TIMER"),
         onPressed:(){
            log("SET TIMER Clicked");
            ScaffoldMessenger.of(context).hideCurrentMaterialBanner();
         }
         
         ),
      TextButton(
        style:TextButton.styleFrom(foregroundColor: Colors.white),
         child: Text("DISMISS"),
         onPressed:(){
            log("DISMISS Clicked");
            ScaffoldMessenger.of(context).hideCurrentMaterialBanner();
         }
         
         )
    ],
    )
);






  
}



