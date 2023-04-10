import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import "package:flutter/material.dart";




//* This Packige add -->   carousel_slider: ^4.2.1

//* Run this command: -->  flutter pub add carousel_slider




class DropdownMenuScreen extends StatefulWidget {

  const DropdownMenuScreen({Key? key}) : super(key: key);

  @override
  State<DropdownMenuScreen> createState() => DropdownMenuStateScreen();
}

class DropdownMenuStateScreen extends State<DropdownMenuScreen> {


   List dropDownListData = [
    {"title": "BCA", "value": "1"},
    {"title": "MCA", "value": "2"},
    {"title": "B.Tech", "value": "3"},
    {"title": "M.Tech", "value": "4"},
  ];

  String defaultValue = "";
  String secondDropDown = "";


   @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('Dropdown Menu Example'),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),


      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(children: [

          const SizedBox(
            height: 20,
          ),

          InputDecorator(
            decoration: InputDecoration(
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(15.0)),
              contentPadding: const EdgeInsets.all(10),
            ),

            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                  isDense: true,
                  value: defaultValue,
                  isExpanded: true,
                  menuMaxHeight: 350,
                  items: [
                    
                    const DropdownMenuItem(
                        child: Text(
                          "Select Course",
                        ),
                        value: ""),
                    ...dropDownListData.map<DropdownMenuItem<String>>((data) {
                      return DropdownMenuItem( child: Text(data['title']), value: data['value']);
                      }).toList(),
                  ],


                  onChanged: (value) {
                    print("selected Value $value");
                    setState(() {
                      defaultValue = value!;
                    });
                  }),
            ),
          ),


          const SizedBox(
            height: 20,
          ),


          InputDecorator(
            decoration: InputDecoration(
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(15.0)),
              contentPadding: const EdgeInsets.all(10),
            ),


            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                  isDense: true,
                  value: secondDropDown,
                  isExpanded: true,
                  menuMaxHeight: 350,
                  items: [
                    const DropdownMenuItem(
                        child: Text(
                          "Select Course",
                        ),
                        value: ""),
                    ...dropDownListData.map<DropdownMenuItem<String>>((data) {

                      return DropdownMenuItem(
                          child: Text(data['title']), value: data['value']);
                    }).toList(),
                  ],

                  onChanged: (value) {
                    print("selected Value $value");
                    setState(() {
                      secondDropDown = value!;
                    });
                  }),
                  
            ),
          ),


          const SizedBox(
            height: 20,
          ),



          ElevatedButton(
              onPressed: () {
                if (secondDropDown == "") {
                  print("Please select a course");
                } else {
                  print("user selected course $defaultValue");
                }
              },
              child: const Text("Submit"))


              
        ]),
      ),




    );




  }
}





