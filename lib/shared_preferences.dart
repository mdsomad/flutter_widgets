// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

// First Add dependencies package -->  shared_preferences: ^2.0.15

// Another way Terminal Run this command --> flutter pub add shared_preferences


class shared_preferencess extends StatefulWidget {

  @override
  State<shared_preferencess> createState() => _shared_preferencessState();
}
class _shared_preferencessState extends State<shared_preferencess> {


    // Create Controller
  
  TextEditingController _Controller = TextEditingController();
  
  var valu = '';
  

  
  

 // setString Method

  void saveText(String text)async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("text",text);
  }


  // getString Method
  
  void readText()async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? saveValue = prefs.getString("text");
    if(saveValue != null){
      _Controller.text = saveValue;

    }
  }

  
  @override
  void initState() {            // <-- Yah initState Method app Mein sabse pahle Run Hota Hai
    super.initState();
    readText();                // <-- readText Method call
  }
  


  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: SafeArea(
        child:Container(
          child:Padding(
            padding: const EdgeInsets.all(16.0),
            child:Column(children: [

              SizedBox(height: 20,),

               TextField(
              controller: _Controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Type text",
                labelText: "Enter text"
              ),

              onChanged: (value){    // <-- Value add and Save
                saveText(value);     //<-- saveText Method call 
              },
            ),

            SizedBox(height: 20,),

            Text(valu,style: TextStyle(
              fontSize: 20,
              fontWeight:FontWeight.bold,
              color: Colors.purple),),   // <-- Display Show value

             SizedBox(height: 20,),

             TextButton(onPressed: (() {    // <-- TextButton Using
               setState(() {
                 valu=_Controller.text;
               });
               
             }), child: Text('Button'),
             style: TextButton.styleFrom(
              backgroundColor: Colors.pink
             ),
             )

         
            ],
            )

           )
          ),
           
        )
    );
  }
}