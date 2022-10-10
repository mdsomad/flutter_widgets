import 'package:flutter/material.dart';
import 'package:flutter_widgets/Components/components.dart';
import 'package:math_expressions/math_expressions.dart';

 // First Add package locction --> pubspec.yaml / dependencies --> (math_expressions: ^2.3.1 )





class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var userInput = "";
  var answar = '';


  void equalPress() {                     // <-- Method

    String finaluserInput = userInput;
    finaluserInput = userInput.replaceAll("x", "*");

    Parser p = Parser();
    Expression exp = p.parse(finaluserInput);
    ContextModel contextModel = ContextModel();
    double eval = exp.evaluate(EvaluationType.REAL, contextModel);
    answar = eval.toString();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text("Calculator Use"),
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [

                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Align(
                          alignment: Alignment.bottomRight,
                          child: Text(
                            userInput.toString(),
                            style: TextStyle(fontSize: 30, color: Colors.white),
                          )),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        answar.toString(),
                        style: TextStyle(fontSize: 30, color: Colors.white),
                      )
                    ],
                  ),
                )),


                Expanded(
                  flex: 3,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          button(
                            title: "A/C",
                            onPreass: () {
                              userInput = '';
                              answar = '';
                              setState(() {});
                            },
                          ),
                          button(
                              title: "+/-",
                              onPreass: () {
                                userInput += '+/-';
                                setState(() {});
                              }),
                          button(
                              title: "%",
                              onPreass: () {
                                userInput += '%';
                                setState(() {});
                              }),
                          button(
                              title: "/",
                              onPreass: () {
                                userInput += '/';
                                setState(() {});
                              },
                              color: Color(0xffffa00a)),
                        ],
                      ),

                      Row(
                        children: [
                          button(
                            title: "7",
                            onPreass: () {
                              userInput += '7';
                              setState(() {});
                            },
                          ),
                          button(
                              title: "8",
                              onPreass: () {
                                userInput += '8';
                                setState(() {});
                              }),
                          button(
                              title: "9",
                              onPreass: () {
                                userInput += '9';
                                setState(() {});
                              }),
                          button(
                              title: "x",
                              onPreass: () {
                                userInput += 'x';
                                setState(() {});
                              },
                              color: Color(0xffffa00a)),
                        ],
                      ),

                      Row(
                        children: [
                          button(
                            title: "4",
                            onPreass: () {
                              userInput += '4';
                              setState(() {});
                            },
                          ),
                          button(
                              title: "5",
                              onPreass: () {
                                userInput += '5';
                                setState(() {});
                              }),
                          button(
                              title: "6",
                              onPreass: () {
                                userInput += '6';
                                setState(() {});
                              }),
                          button(
                              title: "-",
                              onPreass: () {
                                userInput += '-';
                                setState(() {});
                              },
                              color: Color(0xffffa00a)),
                        ],
                      ),

                      Row(
                        children: [
                          button(
                            title: "1",
                            onPreass: () {
                              userInput += '1';
                              setState(() {});
                            },
                          ),
                          button(
                              title: "2",
                              onPreass: () {
                                userInput += '2';
                                setState(() {});
                              }),
                          button(
                              title: "3",
                              onPreass: () {
                                userInput += '3';
                                setState(() {});
                              }),
                          button(
                              title: "+",
                              onPreass: () {
                                userInput += '+';
                                setState(() {});
                              },
                              color: Color(0xffffa00a)),
                        ],
                      ),

                      Row(
                        children: [
                          button(
                            title: "0",
                            onPreass: () {
                              userInput += '0';
                              setState(() {});
                            },
                          ),
                          button(
                              title: ".",
                              onPreass: () {
                                userInput += '.';
                                setState(() {});
                              }),
                          button(
                              title: "DEL",
                              onPreass: () {
                                userInput = userInput.substring(
                                    0, userInput.length - 1);
                                setState(() {});
                              }),
                          button(
                              title: "=",
                              onPreass: () {
                                equalPress();  // <-- Method Call
                                setState(() {});
                              },
                              color: Color(0xffffa00a)),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
