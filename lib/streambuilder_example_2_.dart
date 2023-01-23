import 'dart:async';

import 'package:flutter/material.dart';

class Homepage2 extends StatefulWidget {
  const Homepage2({Key? key}) : super(key: key);

  @override
  State<Homepage2> createState() => _Homepage2State();
}

class _Homepage2State extends State<Homepage2> {


// StreamController<int> counterStream = StreamController<int>();     //* <-- single  streambuilder use data StreamController
// 
StreamController<int> counterStream = StreamController<int>.broadcast();  //* <-- multiple streambuilder use data   StreamController.broadcast()

int conter = 0;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Flutter StreamBuilder Demo'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          StreamBuilder<int>(

            stream: counterStream.stream,

            builder: (BuildContext context, AsyncSnapshot<int> snapshot,) {

              if (snapshot.connectionState == ConnectionState.waiting) {     //* <-- condition star

                return Center(child: CircularProgressIndicator());

              } else if (snapshot.connectionState == ConnectionState.active || snapshot.connectionState == ConnectionState.done) {


                if (snapshot.hasError) {    //* <-- Mine condition star

                  return const Text('Error');

                } else if (snapshot.hasData) {

                  return Center(
                    child: Text(
                        snapshot.data.toString(),
                        style: const TextStyle(color: Colors.teal, fontSize: 70)
                    ),
                  );
                } else {
                  return const Text('Empty data');
                }                                      //* <-- mine condition End




              } else {
                return Text('State: ${snapshot.connectionState}');
              }                                                 //* <-- condition End     


            },


          ),   //* StreamBuilder




        ],
      ),






  floatingActionButton: FloatingActionButton(
    onPressed: (){

      counterStream.add(conter++);   //* <-- StreamController Data Add 

    },

    child: Icon(Icons.add),   
  
  ),





      
    );


    
    
    
    
  }

  


}