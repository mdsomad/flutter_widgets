// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:torch_light/torch_light.dart';


// first add package yah --> torch_light: ^0.4.0





class HomePage extends StatefulWidget {

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  bool isValue = false;
   var TorchOn = "On";
   var TorchOff = "Off";
  

  Future<void> torchLightOn() async {    // <-- On ka  Method Crate
    try{
      await TorchLight.enableTorch();
    } on EnableTorchExistentUserException catch(e){
      //camera in use
      print("camera in use");
    } on EnableTorchNotAvailableException catch(e){
      //torch not available
      print("torch not available");
    }  on EnableTorchException catch(e){
      //something went wrong
      print("something went wrong");
    }
  }

  Future<void> torchLightOff() async {          // <--off ka Method Crate
    try{
      await TorchLight.disableTorch();
    } on DisableTorchExistentUserException catch(e){
      //camera in use
      print("camera in use");
    } on DisableTorchNotAvailableException catch(e){
      //torch not available
      print("torch not available");
    }  on DisableTorchException catch(e){
      //something went wrong
      print("something went wrong");
    }
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Torch Light Using Code"),
      ),
        body: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                  Text(isValue?TorchOn:TorchOff),
                  Switch(value: isValue, onChanged: (val){
                   
                    setState(() {
                       isValue =val;
                    });
                    if(val){
                       torchLightOn();    // < --  on Method call
                    }else{
                      torchLightOff();    // < -- off Method all
                    }
                  }),
                  Text("Torch Light"),
              ],
            ),
          ),
        )
        
        );
  }
}





