// ignore_for_file: prefer_const_constructors
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widgets/profile_screen.dart';
import 'package:flutter_widgets/setting_screen.dart';


class Sidebar_Drawer extends StatelessWidget {

final List drawerMenuListname = const [
    {
      "leading": Icon(
        Icons.account_circle,
        color: Color(0xFF13C0E3),
      ),
      "title": "Profile",
      "trailing": Icon(
        Icons.chevron_right,
      ),
      "action_id": 1,
    },
    {
      "leading": Icon(
        Icons.animation_rounded,
        color: Color(0xFF13C0E3),
      ),
      "title": "About Us",
      "trailing": Icon(Icons.chevron_right),
      "action_id": 2,
    },
    {
      "leading": Icon(
        Icons.help,
        color: Color(0xFF13C0E3),
      ),
      "title": "Help",
      "trailing": Icon(Icons.chevron_right),
      "action_id": 3,
    },
    {
      "leading": Icon(
        Icons.settings,
        color: Color(0xFF13C0E3),
      ),
      "title": "Settings",
      "trailing": Icon(Icons.chevron_right),
      "action_id": 4,
    },
    {
      "leading": Icon(
        Icons.exit_to_app,
        color: Color(0xFF13C0E3),
      ),
      "title": "Log Out",
      "trailing": Icon(Icons.chevron_right),
      "action_id": 5,
    },
    {
      "leading": Icon(
        Icons.exit_to_app,
        color: Color(0xFF13C0E3),
      ),
      "title": "Log Out",
      "trailing": Icon(Icons.chevron_right),
      "action_id": 5,
    },
    { 
      "leading":Icon(Icons.delete,color: Color(0xFF13C0E3),),
      "title":"Delete",
      "trialing": Icon(Icons.chevron_right),
      "action_id":6,
      "value":7

    }
  ];



  @override
  Widget build(BuildContext context) {
    return SafeArea(

      child:SizedBox(
        width: 280,

        child: Drawer(
          
          child:ListView(
            children: [
              const ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://upload.wikimedia.org/wikipedia/commons/5/5f/Alberto_conversi_profile_pic.jpg"),
                ),
                title: Text(
                  "Md Somad",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                subtitle: Text(
                  "8125789534",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
              Divider(
                color: Colors.teal,
              ),
              const SizedBox(
                height: 1,
              ),
              ...drawerMenuListname.map((sideMenuData){
                return ListTile(
                    leading: sideMenuData['leading'],
                    title:Text( sideMenuData['title'],),
                    trailing: sideMenuData['trailing'],


                    onTap: (){

                      Navigator.pop(context);
                      if(sideMenuData["action_id"] == 1){
                        Navigator.push(context,MaterialPageRoute(builder:
                         ((context) =>ProfileScreen() )));
                      }

                      else if(sideMenuData["action_id"] == 4){
                            Navigator.push(context,
                            MaterialPageRoute(builder: 
                            ((context) =>SettingScreen() )));


                      }
                    },
                );
              }).toList()

            ],
          ) ,
        ),
      ) );
  }
}