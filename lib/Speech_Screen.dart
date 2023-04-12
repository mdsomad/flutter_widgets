import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:speech_to_text/speech_to_text.dart';
import 'package:url_launcher/url_launcher.dart';



//* Add This Package --> avatar_glow: ^2.0.2
//* Add This Package --> speech_to_text: ^6.1.1




class SpeechScreen extends StatefulWidget {
  const SpeechScreen({Key? key}) : super(key: key);

  @override
  State<SpeechScreen> createState() => SpeechScreenState();
}

class SpeechScreenState extends State<SpeechScreen> {



SpeechToText speechToText = SpeechToText();
String text = "Hold the button and start speaking";
bool isListening = false;



  @override
  Widget build(BuildContext context) {

    
    return Scaffold(

      appBar: AppBar(
        centerTitle: true,
        leading: Icon(Icons.sort_rounded),
        elevation: 0.0,
        title: Text("Speech to Text Voice Example",

        style: TextStyle(
          fontWeight: FontWeight.w600
        ),
        ),
      ),
      
      
      
      body:SingleChildScrollView(
        reverse: true,
        physics: const BouncingScrollPhysics(),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height *0.7,
          margin: EdgeInsets.only(bottom: 150),
          alignment: Alignment.center,
          child: Text(text,
          style: TextStyle(
            fontSize: 24,
            color: isListening ? Colors.black87 : Colors.black54,
            fontWeight: FontWeight.w600
          ),
          
          ),
        ),
      ),




      floatingActionButtonLocation:FloatingActionButtonLocation.centerFloat,
      
      floatingActionButton: AvatarGlow(
        endRadius: 75.0,
        animate: isListening,
        duration: Duration(milliseconds: 2000),
        glowColor: Colors.teal,
        repeat: true,
        repeatPauseDuration: Duration(milliseconds: 100),

        child: GestureDetector(


          onTapDown: (details) async {
              if(!isListening){
                var available = await speechToText.initialize();
                if(available){
                    setState(() {
                      isListening = true;
                      speechToText.listen(
                        onResult:(result) {
                          setState(() {
                            text = result.recognizedWords;
                          });
                        }
                      );
                      
                    });
                }
                
                
              }
          },




          onTapUp: (details) {
             setState(() {
              isListening = false;
            });
            speechToText.stop();
          },
          



          child: CircleAvatar(
            backgroundColor: Colors.teal,
            radius: 35,
            child:Icon(isListening ? Icons.mic : Icons.mic_none,color: Colors.white,),
            ),
        ),
      ),

      

    );
  }

  
  
}





