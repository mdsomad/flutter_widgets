// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';


class MyHomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drawer using"),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(accountName:Text("Md Somad"), accountEmail: Text("mdsomad55@gmail.com"),
            currentAccountPicture: CircleAvatar(backgroundImage: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/5/5f/Alberto_conversi_profile_pic.jpg'),),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Account"),
              subtitle: Text("person"),
              trailing: Icon(Icons.edit),
            ),
            ListTile(
              leading: Icon(Icons.email),
              title: Text("Enail"),
              subtitle: Text("mdsomad55@gmail.com"),
              trailing: Icon(Icons.send),
            )
          ],
        ),
      ),


      body: Container(
        child: Center(
          child: Text("Drawer Using")
        ),
      ),
    );
  }
}