// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class button extends StatelessWidget {

 final String title;
 final VoidCallback onPreass;
 final Color color;

 const button(
      {Key? key,
      required this.title,
      required this.onPreass,
      this.color = const Color(0xffa5a5a5)})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: InkWell(
        onTap: onPreass,
        child: Container(
          height: 80,
          decoration: BoxDecoration(shape: BoxShape.circle, color: color),
          child: Center(
              child: Text(
            title,
            style: TextStyle(fontSize: 20, color: Colors.white),
          )),
        ),
      ),
    ));
  }
}
