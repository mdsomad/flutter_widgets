import 'package:flutter/material.dart';
import 'package:flutter_widgets/Components/components.dart';



class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Components Use"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          button(title: "Login",onPreass: (){print('Preass');},),
          button(title: "SigUp",onPreass: (){print('Preass 2');},color: Colors.green,),
          button(title: "LogOut",onPreass: (){print('Preass 3');},color: Colors.blue,)
        ],
      ),
    );
  }
}