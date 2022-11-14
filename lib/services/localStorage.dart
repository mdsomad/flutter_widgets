
import 'package:shared_preferences/shared_preferences.dart';

class localStorage {


  static Future<bool> saveTheme(String theme)async{                      // <-- Yah Method Theme Local Save Karta Hai 
    SharedPreferences prefe = await SharedPreferences.getInstance();
    bool result = await prefe.setString("theme", theme);
    return result;
  }
  
 static Future<String?> getTheme()async{                                // <-- Yah Method Theme Get Local Karta Hai 
   SharedPreferences prefe = await SharedPreferences.getInstance();
   String? currentTheme =  prefe.getString("theme");
   return currentTheme;

  }
  
  
}