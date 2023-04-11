import 'package:flutter/material.dart';
import 'package:linkfy_text/linkfy_text.dart';
import 'dart:async';

import 'package:url_launcher/url_launcher.dart';



//* Add This Package --> linkfy_text
//* Add This Package -->  url_launcher




class LinkifyScreen extends StatefulWidget {
  const LinkifyScreen({Key? key}) : super(key: key);

  @override
  State<LinkifyScreen> createState() => LinkifyScreenState();
}

class LinkifyScreenState extends State<LinkifyScreen> {






// TODO Link Open Function
Future<void> _launchUrl(UrlLink) async {
  final Uri _url = Uri.parse(UrlLink);
  if (!await launchUrl(_url)) {
    throw Exception('Could not launch $_url');
  }
}
  





  
  final List<Map<String, dynamic?>> texts = [
    {
      "text": "O1. This text contains a url: https://flutter.dev",
      "types": null
    },
    {
      "text": "O2. This text contains a url: https://www.pexels.com address: https://www.youtube.com/",
      "types": [LinkType.url]
    },
    {
      "text": "O3. This text contains an email address: example@app.com",
      "types": [LinkType.email]
    },
    {
      "text": "O4. This text contains an #hashtag",
      "types": [LinkType.hashTag]
    },
    {
      "text": "O5. This text contains a @user tag",
      "types": [LinkType.userTag]
    },
    {
      "text":"O6. My website url: https://hello.com/GOOGLE search using: www.google.com, social media is facebook.com, additional link http://example.com/method?param=fullstackoverflow.dev, hashtag #trending & mention @dev",
      "types": [
        LinkType.email,
        LinkType.url,
        LinkType.hashTag,
        LinkType.userTag
      ]
    },
  ];






  @override
  Widget build(BuildContext context) {

    
    return Scaffold(

      appBar: AppBar(
        centerTitle: true,
        title: Text("LinkfyText Example"),
      ),
      
      
      body: Padding(
        padding: const EdgeInsets.all(27.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [


            for (var i = 0; i < texts.length; i++)
              Padding(
                  padding: EdgeInsets.only(top: 14),
                  child: LinkifyText(
                    texts[i]['text'],
                    textAlign: TextAlign.left,
                    linkTypes: texts[i]['types'],
                    textStyle: TextStyle(),
                    linkStyle: TextStyle(
                      color:Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),

                    onTap: (link) {
                      
                       print("link pressed: ${link.value!}");

                       print(link.type);

                       if(link.type == LinkType.url){
                           _launchUrl(link.value!.toString());
                       }
                       
                      
                            
                    }


                     
                      
                  )
                ),








          ],
        ),
      ),
    );
  }

  
  
}





