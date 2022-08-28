// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_widgets/shared%20preferencess/shared_preferencess_Class.dart';
import 'package:shared_preferences/shared_preferences.dart';


// First Add dependencies package -->  shared_preferences: ^2.0.15

// Another way Terminal Run this command --> flutter pub add shared_preferences




class shared_preferencess2 extends StatefulWidget {
  const shared_preferencess2({Key? key}) : super(key: key);

  @override
  State<shared_preferencess2> createState() => _shared_preferencess2State();
}

class _shared_preferencess2State extends State<shared_preferencess2> {

  sharedPreferencessHelper _preferencessHelper = sharedPreferencessHelper();    // <-- Yah hai Class ko call karna ka  Instance     ( <-- Yah hai Class ko ccess karne ka tarika )


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  _preferencessHelper.saveBooldata();
                  _preferencessHelper.saveStringdata();
                  _preferencessHelper.saveIntdata();
                  _preferencessHelper.saveDoubledata();
                  _preferencessHelper.saveListdata();
                },
                child: Text("Save Data")),

            SizedBox(
              height: 20,
            ),

            ElevatedButton(
                onPressed: () {
                  _preferencessHelper.getStringdata();
                  _preferencessHelper.getIntdata();
                  _preferencessHelper.getDoubledata();
                  _preferencessHelper.getBooldata();
                  _preferencessHelper.getListdata();
                },
                child: Text("Get Data")),

            SizedBox(
              height: 20,
            ),

            ElevatedButton(
                onPressed: () {
                  _preferencessHelper..removeData("list");
                  _preferencessHelper..removeData("name");
                  _preferencessHelper..removeData("double");
                  _preferencessHelper..removeData("list");
                  _preferencessHelper..removeData("bool");
                  _preferencessHelper..removeData("int");
                  ;
                },
                child: Text("Delete Data"))
          ],
        ),
      )),
    );
  }
}
