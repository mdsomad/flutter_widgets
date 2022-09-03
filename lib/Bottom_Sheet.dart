import 'package:flutter/material.dart';

class Bottom_Sheet extends StatefulWidget {
  const Bottom_Sheet({Key? key}) : super(key: key);

  @override
  State<Bottom_Sheet> createState() => _Bottom_SheetState();
}

class _Bottom_SheetState extends State<Bottom_Sheet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Sheet"),
      ),

      
      body: Container(
          child: Builder(
              builder: ((context) => Center(
                    child: ElevatedButton(
                        onPressed: () {
                          showModalBottomSheet(
                              backgroundColor: Colors.pink[100],
                              context: context,
                              builder: (BuildContext mContext) {
                                return Container(
                                  child: Wrap(
                                    children: [
                                      new ListTile(
                                        onTap: (() {
                                          print("Click Home");
                                        }),
                                        leading: Icon(Icons.home),
                                        title: Text("Home"),
                                      ),
                                      new ListTile(
                                        onTap: (() {
                                          print("Click bookmark");
                                        }),
                                        leading: Icon(Icons.bookmark),
                                        title: Text("Bookmark"),
                                      ),
                                      new ListTile(
                                        onTap: (() {
                                          Navigator.pop(context);
                                          print("Click settings");
                                        }),
                                        leading: Icon(Icons.settings),
                                        title: Text("Settings"),
                                      ),
                                      new ListTile(
                                        onTap: (() {
                                          print("Click logout");
                                        }),
                                        leading: Icon(Icons.logout),
                                        title: Text("Logout"),
                                      ),
                                    ],
                                  ),
                                );
                              });
                        },
                        child: Text("Show Bottom Sheet")),
                  )))),
    );
  }
}
