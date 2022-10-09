// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'dart:math';



class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {

  Random _random = Random();

  int num = 0;

  var _topModalData;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
             Center(
               child: Container(
                height: 250,
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: num == 5?Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.done_all,color: Colors.green,size: 35,)
                      ,SizedBox(height: 15),
                      Text("Congratulation you have won the lottery, your number is $num\n",textAlign: TextAlign.center,)
                    ],
                  ):Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.error,color: Colors.red,size: 35,)
                      ,SizedBox(height: 15),
                      Text("Better luck next time your  number is $num \n try again",textAlign: TextAlign.center,),
                     
                    ],
                  ),
                ),
            ),
             ),
          
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        num = _random.nextInt(100);
        print(num);
        setState(() {
        });
      },
      child: Icon(Icons.refresh),
      ),
    );
  }
}



