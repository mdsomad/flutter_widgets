import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_widgets/provider/home_page_provider.dart';
import 'package:provider/provider.dart';

class DrawerPage extends StatefulWidget {
  const DrawerPage({Key? key}) : super(key: key);

  @override
  State<DrawerPage> createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<themeProvider>(builder:(context, value, child) {
      return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(accountName: Text('Saomd'), accountEmail: Text("mdsomad@gmail.com"),
          currentAccountPicture: CircleAvatar(
            backgroundColor: Colors.red,
          ),
          ),

          SizedBox(height: 10,),
          ListTile(
            onTap: (){
               showDialog(
        context: context,
        builder: ((context) {
          return AlertDialog(
            title: Text("Theme"),
            content: Container(
              height: 170,
              width: 280,
              child: ListView(
                children: [
                  RadioListTile(
                      title: Text('Light'),
                      value: 'light',
                      groupValue: value.val,
                      onChanged: (val) {
                        Navigator.pop(context);
                        value.addvalue(val);
                      }),
                  RadioListTile(
                    title: Text('Dark'),
                      value: 'Dark',
                      groupValue: value.val,
                      onChanged: (val) {
                         Navigator.pop(context);
                        value.addvalue(val);
                      }),
                  RadioListTile(
                      title: Text('System default'),
                      value: 'System default',
                      groupValue: value.val,
                      onChanged: (val) {
                         Navigator.pop(context);
                        value.addvalue(val);
                        print(val);

                      }),
                ],
              ),
            ),
            actions: [
              SizedBox(
                height: 40,
                child: TextButton(onPressed: (){
                 Navigator.pop(context);
                }, child: Text("CANCEL")),
              )
            ],
          );
        }
      )
    ); 
            },
            leading: Icon(Icons.brightness_6_sharp),
            title: Text('Theme',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
            subtitle: Text(value.val.toString()),
          )



          
        ],
      ),
    );
    });
  }


 

  
}