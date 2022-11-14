import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widgets/services/localStorage.dart';

class themeProvider with ChangeNotifier {

  ThemeMode themeMode = ThemeMode.light;

  themeProvider(String theme){
      if(theme == 'light'){
        themeMode = ThemeMode.light;
        val = 'light';
      }else if(theme  == "Dark"){
         themeMode = ThemeMode.dark;
         val = 'Dark';
      }else{
        themeMode = ThemeMode.system;
        val = 'System default';
      }
  }

  String val = 'light';

  addvalue(vals) {
    val = vals;
    toggalTheme(val);
    notifyListeners();
  }

  toggalTheme(val)async {
    if (val == 'Dark') {
      themeMode = ThemeMode.dark;
      await localStorage.saveTheme('Dark');
    } else if (val == 'light') {
      themeMode = ThemeMode.light;
      await localStorage.saveTheme('light');
    } else {
      themeMode = ThemeMode.system;
      await localStorage.saveTheme('System default');
    }
    notifyListeners();
  }
}
