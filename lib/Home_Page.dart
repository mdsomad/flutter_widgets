import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_widgets/app_url.dart';
import 'package:flutter_widgets/model.dart';
import 'package:http/http.dart' as http;




//TODO How to Create UserMode This website link -->  https://app.quicktype.io/

//*  This Create UserMode website Name --> quicktype

//* First http package add now then work






class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {



List<UserModel> userModel = [];     //TODO <-- Create List or Type hai UserModel


  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HTTP Get Api Request'),
      ),

      body: FutureBuilder(

        future:getData(),  //* <-- Call getData() Function

        builder:(context, snapshot) {

        if(snapshot.hasData){       //* <-- Agar deta hai to ja chalega

        return ListView.builder(

        itemCount: userModel.length,      //* <-- userModel.length tak

        itemBuilder:(context, index) {

          return Container(
            height: 130,
            color: Colors.greenAccent,
            padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
            margin:const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("User id:${userModel[index].userId}",   //* <-- This Data Show
                
                style: TextStyle(fontSize: 18),),   

                Text("id: ${userModel[index].id}",            //* <-- This Data Show

                style: TextStyle(fontSize: 18),),             

                Text("Title: ${userModel[index].title}",      //* <-- This Data Show

                style: TextStyle(fontSize: 18),),

                Text("Body: ${userModel[index].body}",        //* <-- This Data Show

                maxLines: 1,
                style: TextStyle(fontSize: 18),),
              ],
            )
            
          );

      },);

           }else{       

             return Center(child: CircularProgressIndicator());       //* <-- Agar data Nahin Hai To yah chalega

           }
      },)


    );




  }







  //TODO Create Function or Function Type This is --> <List<UserModel>> defined
  Future<List<UserModel>> getData ()async{
    final response = await http.get(Uri.parse(AppUrl.getEndPoin));  //* <-- AppUrl calss getEndPoin variable Call 
    var data = jsonDecode(response.body.toString());

    if(response.statusCode == 200){
      for(Map<String,dynamic> index in data){
         
        //* Yah List Main data add kar raha hai
         userModel.add(UserModel.fromJson(index));   //* <-- Call UserModel Call
      }
      return userModel;
    }else{
      return userModel;  //* Data Nahin Hai To Emty List return karega
    }
    
  }
  
  



  
}