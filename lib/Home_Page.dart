import 'package:flutter/material.dart';
import 'package:flutter_widgets/drwer.dart';
import 'package:flutter_widgets/provider/home_page_provider.dart';
import 'package:provider/provider.dart';



class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  
  @override
  Widget build(BuildContext context) {
    
    
    return Scaffold(
      appBar: AppBar(
        title: Text('Dark Theme or light using'),
      ),

      drawer: DrawerPage(),
      
      body: Consumer<themeProvider>(
        builder: (context, value, child) {
          return Center(
        child: Column(
          children: [
             Text('hello',style: TextStyle(
              color: Theme.of(context).primaryColor
             )
             )
          ],
        ),
      );
      },)



    );
  }
}