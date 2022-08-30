import 'package:flutter/material.dart';


class full_screen_page_scroll extends StatefulWidget {
  const full_screen_page_scroll({Key? key}) : super(key: key);

  @override
  State<full_screen_page_scroll> createState() => _full_screen_page_scrollState();
}

class _full_screen_page_scrollState extends State<full_screen_page_scroll> {

PageController _controller = PageController(initialPage: 0);
  
  @override
  Widget build(BuildContext context) {



  List<Widget> FullScrol = [
  
  Container(
     height: MediaQuery.of(context).size.height,
     width: MediaQuery.of(context).size.width,
     child: Center(
      child: Text("Page1"),
     ),
     color: Colors.red,
  ),
  Container(
     height: MediaQuery.of(context).size.height,
     width: MediaQuery.of(context).size.width,
     child: Center(
      child: Text("Page2"),
     ),
     color: Colors.green,
  ),
  Container(
     height: MediaQuery.of(context).size.height,
     width: MediaQuery.of(context).size.width,
     child: Center(
      child: Text("Page3"),
     ),
     color: Colors.blue,
  ),
  Container(
     height: MediaQuery.of(context).size.height,
     width: MediaQuery.of(context).size.width,
     child: Center(
      child: Text("Page4"),
     ),
     color: Colors.yellow,
  ),
  Container(
     height: MediaQuery.of(context).size.height,
     width: MediaQuery.of(context).size.width,
     child: Center(
      child: Text("Page5"),
     ),
     color: Colors.teal,
  ),
  Container(
     height: MediaQuery.of(context).size.height,
     width: MediaQuery.of(context).size.width,
     child: Center(
      child: Text("Page6"),
     ),
     color: Colors.purple,
  ),
  
 ]; 
    
    
    
    
   return Scaffold(

      body: SafeArea(
        child: Container(
      
          child: PageView(
            scrollDirection: Axis.vertical,
            children: FullScrol,               // <-- Call  FullScrol  List
            controller: _controller,
          ),
        ),
      ),
    );
  }
}