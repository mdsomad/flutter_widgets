import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_widgets/home_page.dart';
import 'package:timezone/data/latest_10y.dart';

FlutterLocalNotificationsPlugin notificationsPlugin = FlutterLocalNotificationsPlugin();



void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  
  initializeTimeZones();


  AndroidInitializationSettings androidSettings = const AndroidInitializationSettings('@mipmap/ic_launcher');
  DarwinInitializationSettings iosSettings = const DarwinInitializationSettings(
    requestAlertPermission: true,
    requestBadgePermission: true,
    requestCriticalPermission: true,
    requestSoundPermission: true

  );


InitializationSettings initializationSettings = InitializationSettings(
    android: androidSettings,
    iOS: iosSettings
 );



 bool? initializd = await  notificationsPlugin.initialize(
  initializationSettings,
  onDidReceiveNotificationResponse: (response) {
      print('background app Notification Click Then Open ${response.payload.toString()}');
    }
);

  print("Notification $initializd");
  
  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Widgets",
      home:HomePage(),
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.teal
      ),
      
     darkTheme: ThemeData(
      brightness: Brightness.dark
     ),
    );
  }
}
