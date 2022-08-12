// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_widgets/HomePage.dart';
import 'package:flutter_widgets/Images.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController Controller = TextEditingController();               // <-- Create Controller
  TextEditingController ControllerPassword = TextEditingController();       //  "    "     "     "


  final FormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("TextFornField Using Example"),
        ),


        body: Stack(
          fit: StackFit.expand,
          children: [
            IMAGE(),       // Yah call kar raha hai images Class ko
            Center(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: SingleChildScrollView(
                  child: Card(
                    child: Column(
                      children: [
                        Form(
                            key: FormKey, // <-- FormKey call
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Column(
                                children: [
                                  TextFormField(
                                    controller: Controller,
                                    decoration: InputDecoration(
                                        labelText: "Enter Username",
                                        hintText: "Username"),

                                    validator: ((value) {
                                      if (value!.isEmpty) {
                                        return "Please Enter your Username";
                                      }
                                    }),

                                  ),

                                  SizedBox(                       // <-- Yah Widget do Widget ke bich Mein gap karta hai 
                                    height: 20,
                                  ),


                                  TextFormField(
                                    obscureText: true,
                                    controller: ControllerPassword,
                                    decoration: InputDecoration(
                                        labelText: "Enter Password",
                                        hintText: "Password"),

                                    validator: ((value) {
                                      if (value!.isEmpty) {
                                        return "Please Enter your password";
                                      }
                                    }),

                                  ),


                                  SizedBox(            // <-- Yah Widget do Widget ke bich Mein gap karta hai 
                                    height: 25,
                                  ),


                                  Material(                    // <-- Yah Container Button
                                    color: Colors.pink,
                                    borderRadius: BorderRadius.circular(5),
                                    child: InkWell(
                                      onTap: () {
                                        if (FormKey.currentState!.validate()) {

                                          Navigator.push(context,MaterialPageRoute(builder: (context) =>homepage()));       // <-- Iska Kaam hai dusre page par bhejna
                                          
                                        }
                                      },
                                      child: Container(
                                        width: 100,
                                        height: 50,
                                        child: Center(
                                          child: Text(
                                            "Sign in",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ), // Text
                                        ), // Center
                                      ),  // Container
                                    ), // InkWell
                                  )  // Material
                                ],
                              ),   // Column
                            )
                          ) // Form
                      ],
                    ), // Column
                  ),  // Card
                ), // SingleChildScrollView
              ),
            )
          ],
        ) // Stack

        
        
        
      );
  }
}
