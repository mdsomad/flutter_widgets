

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widgets/pagetow.dart';



class HeroAnimation extends StatefulWidget {
  const HeroAnimation({Key? key}) : super(key: key);

  @override
  State<HeroAnimation> createState() => _Popu_pMen_uButtonState();
}

class _Popu_pMen_uButtonState extends State<HeroAnimation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hero Animation use"),
      ),

      body:  Container(
        child: InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: ((context) => PageTow())));
          },
          child: Hero(     // <-- This code  Hero Animation Widget Using

            tag:'test',    // <-- this Tag name samee

          child: Center(child: Image.asset('assets/test.jpeg',height: 100,))
          ),
        )
      ),
      
    );
  }
}






