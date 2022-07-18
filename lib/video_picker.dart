// ignore_for_file: prefer_const_constructors
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';


class vodeopicker extends StatefulWidget {
  const vodeopicker({ Key? key }) : super(key: key);

  @override
  State<vodeopicker> createState() => _vodeopickerState();
}

class _vodeopickerState extends State<vodeopicker> {

  Future videoPicker(ImageSource src)async{
    final video = await ImagePicker().pickVideo(source: src);
    if(video != null){
        Get.snackbar("video selected",video.path);
    }
    else(){
         Get.snackbar("Error in selected video", "please choose a Different video file");

         // Get.defaultDialog(title: "Error" ,middleText: "hello");
     };
  }
  
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("video Picker"),
      ),
      body: Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        InkWell(
          onTap: (() {
           videoPicker(ImageSource.camera);
          }),
          child: ListTile(
            leading: Icon(Icons.camera),
            title: Text("Camera"),
          ),
        ),
        InkWell(
          onTap: (() {
          videoPicker(ImageSource.gallery);
          }),
          child: ListTile(
            leading: Icon(Icons.photo),
            title: Text("Gallery"),
          ),
        )
      ]),
    ),
    );
  }
}