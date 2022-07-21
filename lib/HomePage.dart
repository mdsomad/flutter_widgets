// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_widgets/theme_mode.dart';
import 'package:get/get.dart';

// First Add package locction --> pubspec.yaml / dependencies --> ( get: ^4.6.5 )

class Homepage extends StatefulWidget {
  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final controller = Get.put(HomeController());

  bool isDark = false; // <-- not using

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Theme Mode using'),
        actions: [
          Switch(
              activeColor: Colors.green,
              value: controller.isDark,
              onChanged: (value) {
                controller.changeTheme(value);
                setState(() {});
              }),
          Center(child: Text("Dark Mode")),
          SizedBox(
            width: 10,
          )
        ],
      ),
    );
  }
}
