

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class Popup_Menu_Button extends StatefulWidget {
  const Popup_Menu_Button({Key? key}) : super(key: key);

  @override
  State<Popup_Menu_Button> createState() => _Popu_pMen_uButtonState();
}

class _Popu_pMen_uButtonState extends State<Popup_Menu_Button> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Popup Menu Button"),
      ),

      body:  Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [

            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.green,
              ),
              title: Text("Saomd"),
              subtitle: Text("hello"),
              
              trailing: PopupMenuButton(
                color: Colors.deepPurple[200],
                icon: Icon(Icons.more_vert),
                itemBuilder: (context)=>[
                  PopupMenuItem(
                    value: 1,
                    child: Text("PopupMenuButton")
                  ),
                  PopupMenuItem(
                    value: 1,
                    child: Text("Forward")
                  ),
                  PopupMenuItem(
                    value: 1,
                    child: Text("Delete")
                  ),
                  PopupMenuItem(
                    onTap: (){
                      debugPrint("Nice Tap");
                    },
                    value: 1,
                    child: Text("Nice")
                  ),
                ]
                  
                ),

                
            ),
            
          const  SizedBox(
              height: 30,
            ),


            Center(
              child: PopupMenuButton(
                icon: Icon(Icons.more_vert),
                itemBuilder: (context)=>[
                  PopupMenuItem(
                    onTap: (){
                      print('add');
                    },
                    value: 1,
                    child: Text("Add")),
                  PopupMenuItem(
                    value: 1,
                    child: ListTile(
                      onTap: (){
                        
                      },
                      title: Text("Edit"),
                      trailing: Icon(Icons.edit),
                    ))
                ]),
            ),
          ],
        ),
      ),
      
    );
  }
}






