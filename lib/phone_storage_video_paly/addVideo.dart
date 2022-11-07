import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_widgets/phone_storage_video_paly/playVideo.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:image_picker/image_picker.dart';

class addVideoScreen extends StatefulWidget {
  const addVideoScreen({Key? key}) : super(key: key);

  @override
  State<addVideoScreen> createState() => _addVideoScreenState();
}

class _addVideoScreenState extends State<addVideoScreen> {






  videoPick(ImageSource src,BuildContext context) async {                            // <-- This Code Video PicK Method Use
    final video = await ImagePicker().pickVideo(source: src);

    if (video != null) {
      Get.snackbar('Video Selected', video.path);
      Navigator.push(context,MaterialPageRoute(builder: ((context) => addCaption_Screen(videoFile:File(video.path,),videoPath:video.path  ,))));      // <-- push addCaption_Screen or send data
      

    } else {
      Get.snackbar(
          "Error In Selecting video ", "Plase Choose A Different Video File");
    }
  }








  showDiaIog0pt(BuildContext context) {           // <-- DialogBox Show                       
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            content: Container(
                height: 125,
                child: Column(
                  children: [
                    ListTile(

                      onTap:(){
                        videoPick(ImageSource.camera,context);        // <-- This videoPick Method Call  
                        } ,    

                      leading:const Icon(Icons.camera,
                      color: Colors.pink,
                      ),
                      title:const Text('Camera'),
                    ),


                    ListTile(

                      onTap:(){
                        videoPick(ImageSource.gallery,context);     // <-- This videoPick Method Call  

                         },     
                      title: const Text('Gallery'),
                      leading: const Icon(
                        Icons.photo,
                        color: Colors.pink,
                      ),
                    ),
                  ],
                )
              ),

              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("Cancal")),
              ],

          );


        });
  }







  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(

          onTap: (){ 
            showDiaIog0pt(context);          // <-- This showDiaIog0pt Method Call
          
          },     

          child: Container(
            width: 190,
            height: 50,
            decoration: BoxDecoration(color:Colors.pink),
            
            child:const Center(
                child: Text(
              'Upload Video',
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
              )
            ),
          ),
        ),
      ),
      
    );
  }
}