import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

// Package go to link -->https://pub.dev/packages/flutter_native_splash/changelog
 
// First add Flutter Package --> flutter_native_splash: ^2.1.3+1

// Second file add File This Name --> flutter_native_splash.yaml


// Then Open Your Terminal
// First Command --> flutter clear 
// second Command --> flutter pub get 
// Third Command -->  flutter pub run flutter_native_splash:create



class MyHomePage extends StatefulWidget {
  const MyHomePage({ Key? key }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  void initState() {
    super.initState();

    /// whenever your initialization is completed, remove the splash screen:
    Future.delayed(Duration(seconds: 5)).then((value) => {
      FlutterNativeSplash.remove()
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Home Page"),
        ),
        body: Container(
          child: Center(child: Text("Splash_Screen package Using")),
        ),
    );
  }
}