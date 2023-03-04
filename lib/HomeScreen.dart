import "package:flutter/material.dart";






class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("SizeBox Using"),
      ),

      body: Column(
        children: [
          Container(
            height: 100,
            width: double.infinity,
            color: Colors.red,
          ),

          100.ph,    //* <-- This Using ( ph height Gap add)

          Container(
            height: 100,
            width: double.infinity,
            color: Colors.green,
          ),


         50.ph,    //* <-- This Using  ( ph height Gap add)


         Row(
          children: [
            Container(
            height: 100,
            width:100,
            color: Colors.blue,
            child: Center(child: Text("Row"),),
          ),


           20.pw,     //* <-- This Using ( pw width Gap add)


            Container(
            height: 100,
            width:100,
            color: Colors.purple,
            child: Center(child: Text("Row"),),
          ),


          ],
         )


         
          
        ],
      ),
      
    );
  }
}




//TODO Only One Create SizedBox extension 
extension Padding on num {
  SizedBox get  ph => SizedBox(height: toDouble());
  SizedBox get  pw => SizedBox(width: toDouble());
}