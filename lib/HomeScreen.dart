import "package:flutter/material.dart";
import 'package:social_media_flutter/social_media_flutter.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';



//* This Packige add -->   social_media_flutter

//* Run this command: -->  flutter pub add social_media_flutter




class HomeScreen extends StatefulWidget {

  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Social Handles'),
        backgroundColor: Colors.black,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  
                  
                  SocialWidget(                                  //* M <-- Instagram
                    placeholderText: 'Instagram',
                    iconData: SocialIconsFlutter.instagram,
                    iconColor: Colors.red,
                    link: 'https://www.instagram.com/md_somad/',
                    placeholderStyle:
                        TextStyle(color: Colors.black, fontSize: 20),
                  ),

                  

                  SocialWidget(                              //* <-- GitHub
                    placeholderText: 'GitHub',
                    iconData: SocialIconsFlutter.github,
                    link: 'https://github.com/mdsoamd',
                    iconColor: Colors.black,
                    placeholderStyle:
                        TextStyle(color: Colors.black, fontSize: 20),
                  ),




                  SocialWidget(                                   //* <-- Twitter
                    placeholderText: 'Twitter',
                    iconData: SocialIconsFlutter.twitter,
                    iconColor: Colors.lightBlue,
                    link: 'https://twitter.com/MdSomad1',
                    placeholderStyle:
                        TextStyle(color: Colors.black, fontSize: 20),
                  ),


                  SocialWidget(                                   //* <-- YouTube
                    placeholderText: 'YouTube',
                    iconData: SocialIconsFlutter.youtube,
                    link: 'https://www.youtube.com/@Oscar-hk9gq',
                    iconColor: Colors.red,
                    placeholderStyle:
                        TextStyle(color: Colors.black, fontSize: 20),
                  ),



                  SocialWidget(                                 //* <-- Linkedin
                    placeholderText: 'Linkedin',
                    iconData: SocialIconsFlutter.linkedin_box,
                    link: 'https://www.linkedin.com/in/md-somad-8827ab256',
                    iconColor: Colors.blueGrey,
                    placeholderStyle:
                        TextStyle(color: Colors.black, fontSize: 20),
                  ),



                  SocialWidget(                                   //* <-- Apple
                    placeholderText: 'Apple',
                    iconData: SocialIconsFlutter.apple,
                    link: '',
                    iconColor: Colors.black,
                    placeholderStyle:
                        TextStyle(color: Colors.black, fontSize: 20),
                  ),



                  SocialWidget(                                //* <-- Behance
                    placeholderText: 'Behance',
                    iconData: SocialIconsFlutter.behance,
                    link: '',
                    iconColor: Colors.deepPurple,
                    placeholderStyle:
                        TextStyle(color: Colors.black, fontSize: 20),
                  ),



                  SocialWidget(                                //* <-- Discord
                    placeholderText: 'Discord',
                    iconData: SocialIconsFlutter.discord,
                    link: '',
                    iconColor: Colors.blueAccent,
                    placeholderStyle:
                        TextStyle(color: Colors.black, fontSize: 20),
                  ),


                  SocialWidget(                               //* <-- Paypal
                    placeholderText: 'Paypal',
                    iconData: SocialIconsFlutter.paypal,
                    link: '',
                    iconColor: Colors.blueGrey,
                    placeholderStyle:
                        TextStyle(color: Colors.black, fontSize: 20),
                  ),


                  SocialWidget(                               //* <-- Twitch
                    placeholderText: 'Twitch',
                    iconData: SocialIconsFlutter.twitch,
                    link: '',
                    iconColor: Colors.deepPurpleAccent,
                    placeholderStyle:
                        TextStyle(color: Colors.black, fontSize: 20),
                  ),


                  SocialWidget(                               //* <-- Facebook
                    placeholderText: 'Facebook',
                    iconData: SocialIconsFlutter.facebook_box,
                    link: 'https://www.facebook.com/profile.php?id=100035772452343',
                    iconColor: Colors.blueGrey,
                    placeholderStyle:
                        TextStyle(color: Colors.black, fontSize: 20),
                  ),


                  SocialWidget(                                  //* <-- Spotify
                    placeholderText: 'Spotify',
                    iconData: SocialIconsFlutter.spotify,
                    link: '',
                    iconColor: Colors.green,
                    placeholderStyle:
                        TextStyle(color: Colors.black, fontSize: 20),
                  ),


                ],
              )),
            ],
          ),



          SizedBox(
            height: 20,
          ),



          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [


              SocialWidget(                                       //* <-- YouTube
                placeholderText: 'YouTube',
                iconData: SocialIconsFlutter.youtube,
                link: '',
                iconSize: 20,
                placeholderStyle: TextStyle(fontSize: 14, color: Colors.grey),
              ),


              SocialWidget(                                         //* <-- linkedin_box
                placeholderText: '/md-somad',
                iconData: SocialIconsFlutter.linkedin_box,
                link: 'https://www.linkedin.com/in/md-somad-8827ab256',
                iconSize: 20,
                placeholderStyle: TextStyle(fontSize: 14, color: Colors.grey),
              ),


            ],
          )
        ],
      ),
    );
  }
}





