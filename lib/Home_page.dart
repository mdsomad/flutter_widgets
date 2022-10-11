import 'package:flutter/material.dart';






class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Clip path widget use"),
        ),
        body: Center(
          child: ClipPath(
            clipper:customClipper() ,
            child: Container(
              height: 300,
              width: 300,
              
              decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(20)
              ),
            )),
        )
        
        );
  }
}

class customClipper extends CustomClipper<Path> {

  @override
  Path getClip(Size size) {
    Path path = Path();
    
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.quadraticBezierTo(size.height,0, 0, 0);




    // path.lineTo(size.width/2,size.height);  <-- This Triangle Safe code
    // path.lineTo(size.width,0);
    
    
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}
