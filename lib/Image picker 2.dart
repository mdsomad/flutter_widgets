// ignore_for_file: prefer_const_constructors
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';



class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  File? _image;

  Future getGalleryImage()async{
      final photo = await ImagePicker().pickImage(source: ImageSource.gallery);     // <-- Using Method 1
      setState(() {
        if(photo!=null){
        _image = File (photo.path);
      }
      else{
        print("No Sellet");
      }
      });
  }




  Future getCameraImage()async{
    final pickimage = await ImagePicker().pickImage(source:ImageSource.camera);    // <-- Using Method 2

    if(pickimage == null) return;
    final tempely = File(pickimage.path);

    setState(() {
      this._image = tempely;
    });

  }


  dialog(BuildContext context){                                         // <-- yah hai Dialog Box Method 
    showDialog(context: context, builder:(BuildContext context){
        return AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),
          ),
          backgroundColor: Colors.yellow,
          title: Text("Choose"),


          content: Container(
            height: 150,
            child: Column(
              children: [
                InkWell(
                  onTap: (){
                    Navigator.pop(context);
                     getCameraImage();
                  },
                  child: ListTile(
                  leading: Icon(Icons.camera,color: Colors.red,),
                  title:Text("Camera"),
                ),
                ),
                InkWell(
                  onTap: (){
                    Navigator.pop(context);
                    getGalleryImage();
                  },
                  child: ListTile(
                  leading: Icon(Icons.photo,color: Colors.red),
                  title:Text("Gallery"),
                ),
                ),
              ],
            )
          ),
        );
    });
  }


  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image picker using"),
      ),
      body: Container(
        child: Center(
          child: Column(

            children: [

              SizedBox( height: 40),

                _image!=null?Image.file(_image!,width: 250,height: 250,fit:BoxFit.cover,):

                Image.network("https://upload.wikimedia.org/wikipedia/commons/5/5f/Alberto_conversi_profile_pic.jpg",width: 250,height: 250,fit: BoxFit.cover,),
              
              SizedBox(height: 40,),
              

              TextButton(onPressed: (){
                dialog(context);
              }, child:Text("Uplod",),
              style: TextButton.styleFrom(
                backgroundColor: Colors.pink
              ),
              )

            ],
          ),
        ),
      ),
    );
  }
}