// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_widgets/Home_Page.dart';
import 'package:flutter_widgets/provider/home_page_provider.dart';
import 'package:flutter_widgets/services/localStorage.dart';
import 'package:flutter_widgets/services/themes.dart';
import 'package:provider/provider.dart';






void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  String currentTheme = await localStorage.getTheme() ?? "light"; 
  runApp(MyApp(theme: currentTheme,));
}

class MyApp extends StatelessWidget {
 final String theme;
  const MyApp({ Key? key ,required this.theme}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [

        ChangeNotifierProvider<themeProvider>(
          create:(context) => themeProvider(theme),
          )
    ],

    child: Consumer<themeProvider>(builder: (context, value, child) {
      return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Widgets",
      themeMode:value.themeMode,
      theme: lightTheme,
      
     darkTheme: darkTheme,

     home:HomePage() ,

    );
    },),
    );
  }
}
