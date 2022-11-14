import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as tago;




class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
   late DateTime dateTime = DateTime.now();






String timeAgo(DateTime d) {                          // <-- Time Show Method
 Duration diff = DateTime.now().difference(d);
 if (diff.inDays > 365)
  return "${(diff.inDays / 365).floor()} ${(diff.inDays / 365).floor() == 1 ? "year" : "years"} ago";
 if (diff.inDays > 30)
  return "${(diff.inDays / 30).floor()} ${(diff.inDays / 30).floor() == 1 ? "month" : "months"} ago";
 if (diff.inDays > 7)
  return "${(diff.inDays / 7).floor()} ${(diff.inDays / 7).floor() == 1 ? "week" : "weeks"} ago";
 if (diff.inDays > 0)
  return "${diff.inDays} ${diff.inDays == 1 ? "day" : "days"} ago";
 if (diff.inHours > 0)
  return "${diff.inHours} ${diff.inHours == 1 ? "hour" : "hours"} ago";
 if (diff.inMinutes > 0)
  return "${diff.inMinutes} ${diff.inMinutes == 1 ? "minute" : "minutes"} ago";
 return "just now";
}







String getVerboseDateTimeRepresentation(DateTime dateTime) {    // Method 2 Time Dislay 
    DateTime now = DateTime.now().toLocal();

    DateTime localDateTime = dateTime.toLocal();

    if (localDateTime.difference(now).inDays == 0) {
      var differenceInHours = localDateTime.difference(now).inHours.abs();
      var differenceInMins = localDateTime.difference(now).inMinutes.abs();

      if (differenceInHours > 0) {
        return '$differenceInHours hours ago';
      } else if (differenceInMins > 2) {
        return '$differenceInMins mins ago';
      } else {
        return 'Just now';
      }
    }

    String roughTimeString = DateFormat('jm').format(dateTime);

    if (localDateTime.day == now.day &&
        localDateTime.month == now.month &&
        localDateTime.year == now.year) {
      return roughTimeString;
    }

    DateTime yesterday = now.subtract(const Duration(days: 1));

    if (localDateTime.day == yesterday.day &&
        localDateTime.month == now.month &&
        localDateTime.year == now.year) {
      return 'Yesterday';
    }

    if (now.difference(localDateTime).inDays < 4) {
      String weekday = DateFormat(
        'EEEE',
      ).format(localDateTime);

      return '$weekday, $roughTimeString';
    }

    return '${DateFormat('yMd').format(dateTime)}, $roughTimeString';
  }





  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DateTime Display using'),
      ),

      body: Container(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            Text(DateFormat.yMEd().add_jms().format(dateTime)),     //<-- DateTime Show Package use -->  intl: ^0.17.0  (Display Example  ==> 'Thu, 5/23/2013 10:21:47 AM')

         
          SizedBox(
            height: 10,
          ),


            Text(tago.format(dateTime)),                           //<-- DateTime Show Package use -->  timeago: ^3.3.0  (Display Example  ==> 'a moment ago')


          SizedBox(
            height: 10,
          ),
              

            Text(timeAgo(dateTime)),                                    // <-- DateTime use call timeAgo Method  (Display Example  ==> 'just nown  )


          SizedBox(
            height: 10,
          ),
            
            
            Text(getVerboseDateTimeRepresentation(dateTime)),        //  <-- call Method 2 --> getVerboseDateTimeRepresentation Time display                                 // <-- DateTime Show Package use --> timeAgo Method  (Display Example  ==> 'just nown  )
            
            
             Center(child: TextButton(onPressed: (){
              setState(() {
                dateTime = DateTime.now();
              });
             }, child: Text("Tap")))
          ],
        ) ,
      )



    );
  }
}