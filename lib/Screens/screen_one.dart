import 'package:flutter/material.dart';
import 'package:flutter_widgets/utils/routes_home.dart';

class ScreenOne extends StatelessWidget {

  dynamic data;    // <-- Date Receive Variable add required

   ScreenOne({Key? key ,required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text(data['name'].toString()),
      ),
      body:  Container(
        child: Center(
          child: TextButton(onPressed: (){
            Navigator.pushNamed(context,RouteName.screenTwo,
            arguments: {
              "pus":data
            }
            );
          }, child: Text("Screen 1",style: TextStyle(color: Colors.white)),
          style: TextButton.styleFrom(
            backgroundColor: Colors.red
          ),
          ),
        ),
      ),
    );
  }
}