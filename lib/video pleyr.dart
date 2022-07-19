// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

// Add dependencies package -->  ( video_player: ^2.4.5 )




class videopleyr extends StatefulWidget {
  const videopleyr({ Key? key }) : super(key: key);

  @override
  State<videopleyr> createState() => _videopleyrState();
}

class _videopleyrState extends State<videopleyr> {

    late VideoPlayerController _controller;
         


  @override
  void initState() {
    _controller = VideoPlayerController.network("https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4")
   ..initialize().then((_){
    setState(() {
      setState(() {
        
      });
    });
   });
    super.initState();
  }
    
    
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("VideoPlayer"),
      ),
      body:   
      Center(
        child: Container(
            width: 350,
            height: 350,
            child:_controller.value.isInitialized?VideoPlayer(_controller):Container()
        ),
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
