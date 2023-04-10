import "package:flutter/material.dart";

class CustomDropdownButtonScreen extends StatefulWidget {
  const CustomDropdownButtonScreen({Key? key}) : super(key: key);

  @override
  State<CustomDropdownButtonScreen> createState() =>
      _CustomDropdownButtonStateScreen();
}

class _CustomDropdownButtonStateScreen extends State<CustomDropdownButtonScreen> {


  bool isOpen = false;

  String selectOption = 'Select Option';

  List<String> languageList = [
    "Javascript",
    "Dart",
    "Java",
    "Python",
    "Kotlin",
    "Swift",
    "PHP",
    "Ruby",
    "Go",
  ];





  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("Custom Dropdown Menu Button Example"),
      ),

      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [

            const SizedBox(
              height: 20,
            ),


            InkWell(
              onTap: () {
                isOpen = !isOpen;    //* Click Option  isOpen = true & Click Option isOpen = false
                setState(() {});
              },

              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(color: Colors.grey.shade300),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        selectOption,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Icon(isOpen
                          ? Icons.keyboard_arrow_up
                          : Icons.keyboard_arrow_down)
                    ],
                  ),
                ),
              ),
            ),


          const SizedBox(
              height: 5,
            ),


            if (isOpen)    //* isOpen value is True Then Show  & isOpen value is false Not Show Widget


              SizedBox(   //* <-- Agar scroll option Nahin chahie to SizedBox Remove kar dijiye

                height: 250,

                child: ListView(
                  primary: true,
                  shrinkWrap: true,
                  children: languageList.map((data) => Container(

                            decoration: BoxDecoration(
                              color: selectOption == data ? Colors.pink : Colors.grey.shade300),
                              child: Padding(
                              padding: const EdgeInsets.all(8.0),

                              child: InkWell(
                                  onTap: () {

                                    //* Yah API call kar sakte hainL
                                    selectOption = data;
                                    isOpen = false;
                                    print("Select Value --> $selectOption");
                                    setState(() {});

                                  },
                                  child: Text(data)),


                            ),

                          )).toList(),



                ),





              )



    
          ],
        ),  // Column

      )  //Padding

    ), // SingleChildScrollView




    ); // Scaffold




  }
}
