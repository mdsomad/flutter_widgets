// ignore_for_file: prefer_const_constructors
import 'dart:ffi';
import 'package:shared_preferences/shared_preferences.dart';



class sharedPreferencessHelper {          // <-- Yah hai Class



// Start Set Value Methods
  
  void saveStringdata() async {                                                // <-- Yah hai Siring type data save karna ka Method
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString("name", "Saomd").then((value) => print(value));      //<-- isko Required hai Key or value
  }




  void saveIntdata() async {                                                // <-- Yah hai Int type data save karna ka Method
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt("int", 123).then((value) => print(value));           //<-- isko Required hai Key or value
  }



  void saveDoubledata() async {                                                    // <-- Yah hai Double type data save karna ka Method
    SharedPreferences _prefs = await SharedPreferences.getInstance(); 

    await _prefs.setDouble("double", 1.01).then(                                   //<-- isko Required hai Key or value
          (value) => print(value),
        );
  }




  void saveBooldata() async {                                                      // <-- Yah hai Bool type data save karna ka Method
    SharedPreferences prefs = await SharedPreferences.getInstance();

    await prefs.setBool("bool", true).then((value) => print(value));              //<-- isko Required hai Key or value
  }




  void saveListdata() async {                                                        // <-- Yah hai List type data save karna ka Method
    SharedPreferences prefs = await SharedPreferences.getInstance();

    await prefs.setStringList("list", <String>["Saomd", "Yasin", "Akif"]).then(       //<-- isko Required hai Key or value
        (value) => print(value));
  }




// Start Get Value Methods

  void getStringdata() async {                                           // <-- Yah hai Siring type data Get karna ka Method 
    SharedPreferences _prefs = await SharedPreferences.getInstance();

    String? value = _prefs.getString("name");

    print(value);
  }



  void getIntdata() async {                                             // <-- Yah hai Int type data Get karna ka Method
    SharedPreferences _prefs = await SharedPreferences.getInstance();

    int? Intvalue = _prefs.getInt("int");

    print(Intvalue);
  }



  void getDoubledata() async {                                           // <-- Yah hai Double type data Get karna ka Method
    SharedPreferences _prefs = await SharedPreferences.getInstance();

    double? doubleValue = _prefs.getDouble('double');

    print(doubleValue);
  }



  void getBooldata() async {                                              // <-- Yah hai Bool type data Get karna ka Method
    SharedPreferences _prefs = await SharedPreferences.getInstance();

    bool? boolvalue = _prefs.getBool("bool");

    print(boolvalue);
  }



  void getListdata() async {                                               // <-- Yah hai List<String> type data Get karna ka Method
    SharedPreferences _prefs = await SharedPreferences.getInstance();

    List<String>? listvalue = _prefs.getStringList("list");

    print(listvalue);
  }




  void removeData(String key) async {                                       // <-- Yah hai data delete karna ka Method   (<--Required Hai Key)
    SharedPreferences _prefs = await SharedPreferences.getInstance();

    await _prefs.remove(key)  
    .then((value) => print(value));
  }


}
