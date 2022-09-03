 import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_widgets/UserModel.dart';


 class JSON_Serialization_and_Deserialization extends StatefulWidget {
  const JSON_Serialization_and_Deserialization({Key? key}) : super(key: key);

  @override
  State<JSON_Serialization_and_Deserialization> createState() => _JSON_Serialization_and_DeserializationState();
}

class _JSON_Serialization_and_DeserializationState extends State<JSON_Serialization_and_Deserialization> {

  UserModel userModel = UserModel(id: "001", fullname: "Soamd", email: "mdsomad@gmail");

  String userJSON  = '{"id":"00","fullname":"Saomd","email":"mdsoamd@gamil.com"}';
  
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
        child:Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: (){

                // Serialization code
                Map<String,dynamic> useMap = userModel.toMap();
                var json = jsonEncode(useMap);
                print(json.toString());
                
              }, child: Text("Serialization")),
              SizedBox(
                width: 20,
              ),
              ElevatedButton(onPressed: (){

                // De-serialization
                var decoded = jsonDecode(userJSON);
                Map<String,dynamic> userMap = decoded;
                UserModel newUser = new UserModel.formMap(userMap);
                print(newUser.email.toString());
                
              }, child: Text("Deserialization")),
            ],
          ),
        ) 
      ),
    );
  }
}