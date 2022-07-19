// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

// First Add dependencies package -->  shared_preferences: ^2.0.15


class shared_preferencess extends StatefulWidget {

  @override
  State<shared_preferencess> createState() => _shared_preferencessState();
}
class _shared_preferencessState extends State<shared_preferencess> {

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
  void initState() {
    super.initState();
    readText();
  }
  

  // Create Controller
  
  TextEditingController _Controller = TextEditingController();
  var valu = '';

  
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
              onChanged: (value){
                saveText(value);
              },
            ),

            SizedBox(height: 20,),

            Text(valu,style: TextStyle(
              fontSize: 20,
              fontWeight:FontWeight.bold,
              color: Colors.purple),),   // <-- Display Show value

             SizedBox(height: 20,),

             TextButton(onPressed: (() {    // <-- TextButton Using
               valu=_Controller.text;
               setState(() {
                 
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