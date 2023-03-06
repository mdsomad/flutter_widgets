import "package:flutter/material.dart";
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';



//* This Packige add --> url_launcher


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

 final Uri _url = Uri.parse('https://flutter.dev');
  
  Future<void> _launchUrl() async {
  if (!await launchUrl(_url)) {
    throw Exception('Could not launch $_url');
  }
}
  
  @override
  Widget build(BuildContext context) {
     return Scaffold(

      appBar: AppBar(
        title: Text("SizeBox Using"),
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,

        children: [

          IconButton(onPressed:_launchUrl , icon:Icon(Icons.link)),   //* <-- _launchUrl() function call
         
          //! This Code Android Phone Not Word
          Center(
            child: Link(
              
               uri: Uri.parse('https://flutter.dev'),
               target: LinkTarget.blank,
               builder:(context, followLink){
                  return ElevatedButton(
                onPressed: followLink, 
                child: Text("Open Link"));
               }
          )),

      
      
        ],
      ),
      
    );
  }
}
