import 'package:flutter/material.dart';
import 'package:flutter_widgets/utils/routes_home.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text("Home page"),
      ),
      body: Container(
        child: Center(
          child: TextButton(onPressed: (){
            Navigator.pushNamed(context,RouteName.screenOne,    
            arguments: {
              'name':'Saomd',              // <-- Data Share Next Screen Method
              'age': 25
            }
            
            );
          }, child: Text("Screen Next",style: TextStyle(color: Colors.white),),
          style: TextButton.styleFrom(
            backgroundColor: Colors.red
          ),
          ),
        ),
      ),
    );
  }
}