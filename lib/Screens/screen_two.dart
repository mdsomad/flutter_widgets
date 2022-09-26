import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/routes_home.dart';

class ScreenTwo extends StatelessWidget {

  dynamic res;     // <-- Date Receive Variable add required


   ScreenTwo({Key? key,required this.res}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text(res['pus']['age'].toString()),
      ),
      body:  Container(
        child: Center(
          child: TextButton(onPressed: (){
            
          }, child: Text("Screen 2",style: TextStyle(color: Colors.white)),
          style: TextButton.styleFrom(
            backgroundColor: Colors.red
          ),
          ),
        ),
      ),
    );
  }
}