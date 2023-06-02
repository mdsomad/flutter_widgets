import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_widgets/main.dart';
import 'package:timezone/timezone.dart' as tz;



FlutterLocalNotificationsPlugin notificationsPlugin = FlutterLocalNotificationsPlugin();

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {





//TODO: Create showNotification function
void showNotification()async{
    AndroidNotificationDetails androidDetails = new AndroidNotificationDetails(
       "My Notification",
       "Notification",
       priority: Priority.max,
       importance: Importance.max
    );

    DarwinNotificationDetails iosDetails = new DarwinNotificationDetails(
         presentAlert: true,
         presentBadge: true,
         presentSound: true
    );


    NotificationDetails notificationDetails = NotificationDetails(
      android: androidDetails,
      iOS: iosDetails,
    );


  //* Notifications Show Karne Ka pahla Tarika Yha hai
  // await notificationsPlugin.show(0, "My Title", "Hello Somad", notificationDetails);




DateTime scheduleDate = DateTime.now().add(Duration(seconds: 5));



//* Notifications Show Karne Ka Dusra Tarika Yha hai
await notificationsPlugin.zonedSchedule(
      0,
      "Sample Notification",
      "This is a notification",
      tz.TZDateTime.from(scheduleDate, tz.local),
      notificationDetails,
      uiLocalNotificationDateInterpretation: UILocalNotificationDateInterpretation.wallClockTime,
      androidAllowWhileIdle: true,
      payload: "notification-payload"
    );
    


    // * Notification Cancel Methods
    // notificationsPlugin.cancel(0);
    // notificationsPlugin.cancelAll();

  }



//TODO: Create checkForNotification function
 void checkForNotification() async {
    NotificationAppLaunchDetails? details = await notificationsPlugin.getNotificationAppLaunchDetails();

    if(details != null) {
      if(details.didNotificationLaunchApp) {
        NotificationResponse? response = details.notificationResponse;

        if(response != null) {
          String? payload = response.payload;
          print("Notification Payload: $payload");
        }
      }
    }
  }






 @override
  void initState() {
    super.initState();
    checkForNotification();  //* <-- Call this checkForNotification Function
  }



  
  
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Local Notifications"),
      ),


      body: SafeArea(
        child: Container(),
      ),
      
      
       
      floatingActionButton: FloatingActionButton(onPressed: showNotification,
      child: Icon(Icons.notification_add),
      ),
      
    );
  }
}