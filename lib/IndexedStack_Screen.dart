import 'package:flutter/material.dart';






class IndexedStackScreen extends StatefulWidget {
  const IndexedStackScreen({Key? key}) : super(key: key);

  @override
  State<IndexedStackScreen> createState() => IndexedStackScreenState();
}

class IndexedStackScreenState extends State<IndexedStackScreen> {



  int index = 0;
  
  
  
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("IndexedStack Example"),
      ),

      
      body: Center(

        child: IndexedStack(   //* <-- yah Widget index by container Show karta hai
          index: index,
          children: [

            Container(
              height: 300,
              width: 300,
              color: Colors.red,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Container Index",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,),),
                  Text("0",style: TextStyle(fontSize: 100,),),
                ],
              ),
            ),


            Container(
              height: 300,
              width: 300,
              color: Colors.green,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Container Index",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,),),
                  Text("1",style: TextStyle(fontSize: 100,),),
                ],
              ),
            ),


            Container(
              height: 300,
              width: 300,
              color: Colors.yellow,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Container Index",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,),),
                  Text("2",style: TextStyle(fontSize: 100,),),
                ],
              ),
            ),


            Container(
              height: 300,
              width: 300,
              color: Colors.purple,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Container Index",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,),),
                  Text("3",style: TextStyle(fontSize: 100,),),
                ],
              ),
            ),



            
          ]
        
        ),
      ),
      
      


      floatingActionButton: FloatingActionButton(
      child: Icon(Icons.change_circle),

      onPressed: () {
        if(index == 3){
          index = 0;
        }else{
          index = index + 1;
        }

        setState((){});
        
      }, 
      
    ),





      
    );    
  }
}