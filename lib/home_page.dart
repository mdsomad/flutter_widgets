import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';



class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FontAwesomeIcons Use"),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(
                icon: FaIcon(FontAwesomeIcons.linux, size: 60,color: Colors.black,),
                onPressed: (){}),

                SizedBox(
                  height: 10,
                ),

              IconButton(
                 icon: Icon(Icons.add, size: 60),
                onPressed: (){}),

                
                
                
                
          ]),
        ),
      ),
    );
  }
}