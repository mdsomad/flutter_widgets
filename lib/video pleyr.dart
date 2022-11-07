// ignore_for_file: prefer_const_constructors
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:image_picker/image_picker.dart';
import 'package:video_player/video_player.dart';

// Add dependencies package -->  ( video_player: ^2.4.5 )
// Add dependencies package -->  ( image_picker: ^0.8.6 )




class videopleyr extends StatefulWidget {
  const videopleyr({ Key? key }) : super(key: key);

  @override
  State<videopleyr> createState() => _videopleyrState();
}

class _videopleyrState extends State<videopleyr> {

    late VideoPlayerController _controller;
         

  @override
  void initState() {
    _controller = VideoPlayerController.network("https://firebasestorage.googleapis.com/v0/b/kitkot-aad74.appspot.com/o/videos%2Ff8cd9a60-5b62-11ed-b690-2f20a6e7aec4?alt=media&token=7a30aa88-3dd3-45bf-8e34-966296920631")
   ..initialize().then((_){
    setState(() {
      
    });
   });
   _controller.setVolume(0.9);
   _controller.setLooping(true);
    super.initState();
  }
    
    


    
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("VideoPlayer"),
      ),
      body:   
      Column(
        children: [
          Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height/1.3,
              child:_controller.value.isInitialized?VideoPlayer(_controller):Container()
          ),
        ],
      ),
      




      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton:FloatingActionButton(onPressed: (){
        setState(() {
          _controller.value.isPlaying
          ?_controller.pause()
          :_controller.play();
        });
      },
      child: Icon(_controller.value.isPlaying?Icons.pause:Icons.play_arrow)
      ), 
    );
  }
}
