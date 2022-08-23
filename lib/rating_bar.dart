// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

// first add package yah --> flutter_rating_bar: ^4.0.1: ^0.4.0




class RatingBarScreen extends StatefulWidget {
  const RatingBarScreen({Key? key}) : super(key: key);

  @override
  State<RatingBarScreen> createState() => _RatingBarScreenState();
}

class _RatingBarScreenState extends State<RatingBarScreen> {
  double FullRating = 0;
  double HalfRating = 0;
  double emojiRating = 0;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Rating Bar Using"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [


       const   SizedBox(                // <-- Full Rating ka Yahan se Code Start hai
            height: 20,
            ),
        const Text("Only Full Rating Bar",
        style:TextStyle(
          fontWeight: FontWeight.w300,
          fontSize: 24
        ) ,
        textAlign: TextAlign.center,
        ),

        Center(                              // <-- yah hai Full Rating Use karne ka code
          child: RatingBar.builder(
            initialRating: 0,
            minRating: 1,
            unratedColor: Colors.grey,
            itemCount: 5,
            itemSize: 50.0,
            itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
            updateOnDrag: true,
            itemBuilder: (context, index) => Icon(Icons.star,color: Colors.red,),
            onRatingUpdate: (Ratingvalue) {
              setState(() {
                FullRating = Ratingvalue;
                
              });
            },
          ),
        ),
        const   SizedBox(
            height: 20,
            ),

         Text("Rating $FullRating",           // <-- yah hai Rating Show karne ka code
        style:TextStyle(
          fontWeight: FontWeight.w300,
          fontSize: 24
        ) ,
        textAlign: TextAlign.center,
        ),      // <-- Code End






       const   SizedBox(           // <-- Half Rating ka  Yahan se Code Start hai     
            height: 20,
            ),

        const Text("half Rating Bar",
        style:TextStyle(
          fontWeight: FontWeight.w300,
          fontSize: 24
        ) ,
        textAlign: TextAlign.center,
        ),

        Center(                                // <-- yah hai Half Rating Use karne ka code
          child: RatingBar.builder(
            initialRating: 0,
            minRating: 1,
            allowHalfRating: true,
            unratedColor: Colors.grey,
            itemCount: 5,
            itemSize: 50.0,
            itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
            updateOnDrag: true,
            itemBuilder: (context, index) => Icon(Icons.star,color: Colors.red,),
            onRatingUpdate: (Ratingvalue) {
              setState(() {
                HalfRating = Ratingvalue;
               
              });
            },
          ),
        ),
        const   SizedBox(
            height: 20,
            ),

         Text("Rating $HalfRating",          // <-- yah hai Rating Show karne ka code
        style:TextStyle(
          fontWeight: FontWeight.w300,
          fontSize: 24
        ) ,
        textAlign: TextAlign.center,
        ),   // <-- Code End





        const   SizedBox(      // <-- Emoji ka Yahan se Code Start hai
            height: 20,
            ),

        const Text("Emoji Rating Bar",
        style:TextStyle(
          fontWeight: FontWeight.w300,
          fontSize: 24
        ) ,
        textAlign: TextAlign.center,
        ),

        Center(                           // <-- yah hai Emoji Rating Use karne ka code
          child: RatingBar.builder(
            initialRating: 0,
            minRating: 1,
            allowHalfRating: false,
            unratedColor: Colors.grey,
            itemCount: 5,
            itemSize: 50.0,
            itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
            updateOnDrag: true,
            itemBuilder: (context, index) {
                switch (index) {
                  case 0:
                    return Icon(
                      Icons.sentiment_very_dissatisfied,
                      color: emojiRating == 1 ? Colors.red : Colors.grey,
                    );
                  case 1:
                    return Icon(
                      Icons.sentiment_dissatisfied,
                      color: emojiRating == 2 ? Colors.redAccent : Colors.grey,
                    );
                  case 2:
                    return Icon(
                      Icons.sentiment_neutral,
                      color: emojiRating == 3 ? Colors.amber : Colors.grey,
                    );
                  case 3:
                    return Icon(
                      Icons.sentiment_satisfied,
                      color: emojiRating == 4 ? Colors.lightGreen : Colors.grey,
                    );
                  case 4:
                    return Icon(
                      Icons.sentiment_very_satisfied,
                      color: emojiRating == 5 ? Colors.green : Colors.grey,
                    );
                  default:
                    return Container();
                }
              },
            onRatingUpdate: (Ratingvalue) {
              setState(() {
                emojiRating = Ratingvalue;
                
              });
            },
          ),
        ),
        const   SizedBox(
            height: 20,
            ),

         Text(                            // <-- yah hai Emoji Rating Show karne ka code hai
            emojiRating == 1
                ? "SICK"
                : emojiRating == 2
                    ? "BAD"
                    : emojiRating == 3
                        ? "OKAY"
                        : emojiRating == 4
                            ? "GOOD"
                            : emojiRating == 5
                                ? "GREAT"
                                : "",
        style:TextStyle(
          fontWeight: FontWeight.w300,
          fontSize: 24
        ) ,
        textAlign: TextAlign.center,
        ),   // <-- Code End





        const   SizedBox(      // <-- Yahan se Code Start hai
            height: 20,
          ),

        const Text("Rating Bar",
        style:TextStyle(
          fontWeight: FontWeight.w300,
          fontSize: 24
        ) ,
        textAlign: TextAlign.center,
        ),

        Center(                                        // <-- Ismein only Rating Dekh Sakta hai ( User Rating Nahin De Sakta hai)
          child: RatingBar.builder(
            initialRating: 4,
            ignoreGestures: true,
            unratedColor: Colors.grey,
            itemCount: 5,
            itemSize: 50.0,
            itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
            updateOnDrag: true,
            itemBuilder: (context, index) => Icon(Icons.star,color: Colors.red,),
            onRatingUpdate: (Ratingvalue) {

            },
          ),
        ),
        const   SizedBox(
            height: 20,
            ),

         Text("Rating ${4.0} ",
        style:TextStyle(
          fontWeight: FontWeight.w300,
          fontSize: 24
        ) ,
        textAlign: TextAlign.center,
        ),   // <-- Code End
          


        
        
        ],
      ),
    );
  }
}