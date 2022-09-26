import 'package:flutter/material.dart';
import 'package:flutter_widgets/Screens/home_page.dart';
import 'package:flutter_widgets/Screens/screen_one.dart';
import 'package:flutter_widgets/Screens/screen_two.dart';
import 'package:flutter_widgets/utils/routes_home.dart';




class Routes {
  
  static Route<dynamic> generateRoute(RouteSettings settings){
   switch (settings.name) {
     case RouteName.homePage:
      return MaterialPageRoute(builder: (context)=>HomePage());

     case RouteName.screenOne:
      return MaterialPageRoute(builder: (context)=>ScreenOne(data: settings.arguments as Map,));   // <-- Data Share Add This code  
     
     case RouteName.screenTwo:
      return MaterialPageRoute(builder: (context)=>ScreenTwo(res: settings.arguments as Map,));

     default:
      return MaterialPageRoute(builder: (context)=>Scaffold(
        body: Center(
          child: Text("No Routs"),
        ),
      )
    );

    
   }
  }



  
}