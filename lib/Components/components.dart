// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class button extends StatelessWidget {
  String title;
  VoidCallback onPreass;
  Color color;

   button({
    Key? key,
    required this.title,
    required this.onPreass,
    this.color = Colors.red
  }) : super(key: key);

   

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        color: color,
        borderRadius: BorderRadius.circular(15),
        child: InkWell(
          onTap: onPreass,
          child: Container(
            height: 50,
            child: Center(child: Text(title)),
          ),
        )
      ),
    );
  }
}
