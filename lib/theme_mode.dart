// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

// First Add package locction --> pubspec.yalm / dependencies --> ( get: ^4.6.5 )

class HomeController extends GetxController {
  var count = 0;      // <-- not using
  var isDark = false;

  void increment() {    //<-- not using
    count++;
    update();
  }

  void changeTheme(state) {
    if (state == true) {
      isDark = true;
      Get.changeTheme(ThemeData.dark());
    }
     else {
      isDark = false;
      Get.changeTheme(ThemeData.light());
      Get.changeTheme(ThemeData(primarySwatch: Colors.pink));
      update();
    }
  }
}
