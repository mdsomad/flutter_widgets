import 'package:flutter/material.dart';

class textformfield extends StatelessWidget {
  const textformfield({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TextFormField Use"),
      ),
      body: Container(
          child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            keyboardType: TextInputType.emailAddress,
            cursorColor: Colors.black,
            enabled: true,
            style: TextStyle(fontSize: 18, color: Colors.black),
            decoration: InputDecoration(
                filled: false,
                prefixIcon: Icon(Icons.email),
                fillColor: Colors.grey.withOpacity(0.3),
                hintText: 'Email',
                hintStyle: TextStyle(fontSize: 14, color: Colors.grey.shade600),

                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue, width: 1),
                    borderRadius: BorderRadius.circular(10)),

                errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red, width: 1),
                    borderRadius: BorderRadius.circular(10)),
                    
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.teal, width: 2),
                    borderRadius: BorderRadius.circular(10))),
            onChanged: (value) {
              print(value);
            },
          ),
        ),
      )),
    );
  }
}
