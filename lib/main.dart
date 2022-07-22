// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_widgets/theme/theme_contributor.dart';
import 'package:flutter_widgets/theme/theme_manager.dart';

void main() {
  runApp(MyApp());
}

ThemeManager _themeManager = ThemeManager();

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void dispose() {
    _themeManager.removeListener(themeListener);
    super.dispose();
  }

  @override
  void initState() {
    _themeManager.addListener(themeListener);
    super.initState();
  }

  themeListener() {
    if (mounted) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    // ignore: dead_code
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Widgets",
      home: Homepage(),
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: _themeManager.themeMode,
    );
  }
}







class Homepage extends StatefulWidget {
  @override
  State<Homepage> createState() => _Homepage1Stat();

  buttt(BuildContext context) {}
}

class _Homepage1Stat extends State<Homepage> {
  bool changeValue = false;

  @override
  Widget build(BuildContext context) {
    TextTheme _textTheme = Theme.of(context).textTheme;
    bool isDark = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      appBar: AppBar(
        title: Text('DarkMode in Switch button using'),
        actions: [
          Switch(
              activeColor: Colors.green,
              value: _themeManager.themeMode == ThemeMode.dark,
              onChanged: (val) {
                _themeManager.toggleTheme(val);
                changeValue = val;
              }),
          Center(child: Text("Dark Mode")),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  height: 50,
                  width: 150,
                  decoration: BoxDecoration(
                      color: Colors.black87,
                      borderRadius: BorderRadius.circular(5)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "DarkMode",
                        style: TextStyle(color: Colors.purple),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        changeValue ? "ON" : "OFF",
                        style: TextStyle(
                            color: changeValue ? Colors.green : Colors.red,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
