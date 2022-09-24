// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_widgets/stack_widget_Example2.dart';




class STACT_POSITIONED extends StatefulWidget {
  const STACT_POSITIONED({ Key? key }) : super(key: key);

  @override
  State<STACT_POSITIONED> createState() => _STACT_POSITIONEDState();
}

class _STACT_POSITIONEDState extends State<STACT_POSITIONED>{
  late double height,width;

  @override
  Widget build(BuildContext context) {

    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(

        title: Text("Stack & Positioned Using"),
        
        ),


      body:Stack(

         children: [
          Column(
            children: [
              Container(
                color: Colors.blue,
                child: Container(
                          
                          height:height *.4,
                          decoration: BoxDecoration(
                color: Colors.pink,
                borderRadius: BorderRadius.only(bottomRight: Radius.circular(50))
                          ),
                          child: Column(
                            children: [
                              Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                IconButton(onPressed: (){}, icon: Icon( Icons.menu,size: 30,color: Colors.white, ),),
                                IconButton(onPressed: (){}, icon: Icon( Icons.more_horiz,size: 30,color: Colors.white, ),)
                                ],),
                               Row(children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                                  child: Text("Welcome Back",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),),
                                )
                               ],)
                            ],
                          ),
                        ),
              ),
              
          Container(
            color: Colors.pink,
            child:Container(
            width: double.infinity,
            height:height *.47,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(50))
              ),
              
              child: Center(child: TextButton(onPressed: (){
                Navigator.push(context,MaterialPageRoute(builder: ((context) => Stack_Example2())));
              },child: Text("Stack Example2 View",style: TextStyle(color: Colors.white),)
              ,style: TextButton.styleFrom(backgroundColor:Colors.red),))
             ), 
            
          ),
         ],
        ),


          Positioned(
            top: 190,left: 50,
            child: ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Image.asset("assets/girl.jpg",scale: 3.7,)))
         ],
      ),
    );
    
  }

}