import 'package:flutter/material.dart';
import 'package:flutter_widgets/Text_Form_Field.dart';
import 'Sign in .dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Widgets",
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.teal
      ),
      
     darkTheme: ThemeData(
      brightness: Brightness.dark
     ),
     initialRoute: "TextFormField",
     routes: {
      "/":(context) => singin(),
      "TextFormField":(context) => textformfield()
     },
    );
  }
}
