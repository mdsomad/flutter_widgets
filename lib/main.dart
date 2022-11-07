import 'package:flutter/material.dart';
import 'package:flutter_widgets/provider/Ad_provider.dart';
import 'package:flutter_widgets/screens/HomePage.dart';
import 'package:provider/provider.dart';




void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers:[
        ChangeNotifierProvider<AdProvider>(create:(context) => AdProvider(),)
    ],
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Widgets",
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.teal
      ),
      
     darkTheme: ThemeData(
      brightness: Brightness.dark
     ),
     home: HomePage(),
     
    ),
    );
  }
}
