import 'package:flutter/material.dart';

class IMAGE extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "images/bg.jpg",
      fit: BoxFit.cover,
      color: Colors.black.withOpacity(0.7),
      colorBlendMode: BlendMode.darken,

    );
  }
}
