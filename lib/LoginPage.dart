// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';



class loginpage extends StatelessWidget {
  const loginpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                Image.asset(
                  "images/logoss.png",
                  width: 50,
                  height: 50,
                ),


              const SizedBox(
                  width: 10,
                ),


                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Maintenance",
                      style: TextStyle(
                          fontSize: 24,
                          fontFamily: 'rubik medium',                 // <-- Use Google font
                          color: Color(0xff2D3142)),
                    ),
                    Text(
                      "Box",
                      style: TextStyle(
                          fontSize: 24,
                          fontFamily: 'rubik medium',            // <-- Use Google font
                          color: Color(0xffF97038)),
                    )
                  ],
                )
              ],
            ),


           const SizedBox(
              height: 40,
            ),


            const Center(
                child: Text(
              "Login",
              style: TextStyle(
                  fontSize: 24,  
                  fontFamily: 'rubik medium',                // <-- Use Google font
                  color: Color(0xff2D3142)),
            )),


          const  SizedBox(
              height: 14,
            ),

            const Center(
                child: Text(
              "Lorem ipsum dolor sit amet,\n Consetetur adipiscing elit",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'rubik regular ',                // <-- Use Google font
                  color: Color(0xff4C5980)),
            )),


          const  SizedBox(
              height: 20,
            ),


            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(                                          // <-- Using TextFormField
                decoration: InputDecoration(
                    hintText: 'Email',
                    fillColor: Color(0xffF8F9FA),
                    filled: true,
                    prefixIcon: Icon(
                      Icons.alternate_email,
                      color: Color(0xff323F4B),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffE4E7EB)),      // <-- Click active Color
                        borderRadius: BorderRadius.circular(10)),

                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffE4E7EB)),       // <-- Yah code TextFormField ka bottom line ko remove karta hai
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),


         const SizedBox(
              height: 15,
            ),


            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(                                          // <-- Using TextFormField
                obscureText: true,
                decoration: InputDecoration(
                    hintText: 'Password',
                    fillColor: Color(0xffF8F9FA),
                    filled: true,
                    suffixIcon: Icon(Icons.visibility_off_outlined),
                    prefixIcon: Icon(
                      Icons.lock_open,
                      color: Color(0xff323F4B),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffE4E7EB)),      // <-- Click active Color
                        borderRadius: BorderRadius.circular(10)),
                        
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffE4E7EB)),            // <-- Yah code TextFormField ka bottom line ko remove karta hai  
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),


            Padding(
              padding: const EdgeInsets.only(left: 250.0, top: 5.0),
              child: Text(
                "Forgot Password?",style: TextStyle(decoration: TextDecoration.underline),
                textAlign: TextAlign.left,
              ),
            ),

            
            const SizedBox(
              height: 100,
            ),


            Material(
              color: Color(0xffF97038),
              borderRadius: BorderRadius.circular(10),

              child: InkWell(
                onTap: (() {
                  print("Tap");
                }),

                child: Container(            // <-- Use Container
                  height: 50,
                  width: 300,
                  child: Center(
                    child: Text(
                      "LOG IN",
                      style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'rubik regular',        // <-- Use Google font
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),


          const  SizedBox(
              height: 15,
            ),


            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "Dont have an account?",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'rubik regular ',                // <-- Use Google font
                      color: Color(0xff4C5980)),
                ),
                Text(
                  "Sing Up",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'rubik medium ',          // <-- Use Google font
                      color: Color(0xffF97038)),
                ),
              
              ],
            ) // Row



          ],
        ), // Column
      ),
    ));
  }
}





