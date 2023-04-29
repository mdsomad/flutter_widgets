import 'package:flutter/material.dart';




class LimitedBoxWidget extends StatelessWidget {
  const LimitedBoxWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: ListView.builder(
        itemCount: 10,
        itemBuilder:(context, index) {
           return LimitedBox(            //* <-- is Widget sa container ka height and weight ka Limite set kar sakte hain
            maxHeight: 100,
             child: Container(
                height: 200,
                color: index.isEven ? Colors.red : Colors.teal,
             ),
           );
      },),
    );
  }
}









