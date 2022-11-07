
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:video_player/video_player.dart';
import 'package:get/get.dart';



class addCaption_Screen extends StatefulWidget {
  File videoFile;
  String videoPath;
  
  
   addCaption_Screen({Key? key,           // <-- data  recrive
  required this.videoFile,
  required this.videoPath
  }) : super(key: key);

  @override
  State<addCaption_Screen> createState() => _addCaption_ScreenState();
}

class _addCaption_ScreenState extends State<addCaption_Screen> {

 
late VideoPlayerController videoPlayerController;
TextEditingController songNameControlle = new TextEditingController();
TextEditingController captionControlle = new TextEditingController();

 @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    videoPlayerController.dispose();
    
  }




  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      videoPlayerController = VideoPlayerController.file(widget.videoFile);   
    });
    videoPlayerController.initialize();
    videoPlayerController.setLooping(true);   
    videoPlayerController.setVolume(0.9);
  }

 




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [

            SizedBox(                                                 // <-- This video display code
              width:MediaQuery.of(context).size.height,
              height: MediaQuery.of(context).size.height  ,
              child:  VideoPlayer(videoPlayerController ),
            ),

          ],
        ),
      ),
     floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton:FloatingActionButton(onPressed: (){
        setState(() {
          videoPlayerController.value.isPlaying
          ?videoPlayerController.pause()
          :videoPlayerController.play();
        });
      },
      child: Icon(videoPlayerController.value.isPlaying?Icons.pause:Icons.play_arrow)
      ), 
    );
  }
}
