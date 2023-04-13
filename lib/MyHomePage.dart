import 'package:flutter/material.dart';
import 'package:panara_dialogs/panara_dialogs.dart';




//* Use This Package --> panara_dialogs: ^0.1.4
//* Run this command: --> flutter pub add panara_dialogs







class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key,}) : super(key: key);
 

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Panara Dialogs Demo"),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[

            const SizedBox(
              height: 10,
            ),



            const Text(
              "PanaraInfoDialog & It's Variants",
            ),


            const SizedBox(
              height: 10,
            ),


            TextButton(
              onPressed: () {
                PanaraInfoDialog.show(
                  context,
                  title: "Hello",
                  message: "This is the Panara Info Dialog Success.",
                  buttonText: "Okay",
                  onTapDismiss: () {
                    print("User Tap Okay Button");
                    Navigator.pop(context);
                  },
                  panaraDialogType: PanaraDialogType.success,
                );
              },


              child: const Text("Show Success Info"),
            ),

            
            const SizedBox(
              height: 10,
            ),


            TextButton(
              onPressed: () {
                PanaraInfoDialog.showAnimatedGrow(
                  context,
                  title: "Hello",
                  message: "This is the Panara Info Dialog Normal.",
                  buttonText: "Okay",
                  onTapDismiss: () {
                    print("User Tap Okay Normal Button");
                    Navigator.pop(context);
                  },
                  panaraDialogType: PanaraDialogType.normal,
                );
              },
              child: const Text("Show Normal Info"),
            ),


            const SizedBox(
              height: 10,
            ),


            TextButton(
              onPressed: () {
                PanaraInfoDialog.showAnimatedGrow(
                  context,
                  title: "Hello",
                  message: "This is the Panara Info Dialog Warning.",
                  buttonText: "Okay",
                  onTapDismiss: () {
                     print("User Tap Okay Warning Button");
                    Navigator.pop(context);
                  },
                  panaraDialogType: PanaraDialogType.warning,
                );
              },
              child: const Text("Show Warning Info"),
            ),


            const SizedBox(
              height: 10,
            ),


            TextButton(
              onPressed: () {
                PanaraInfoDialog.showAnimatedGrow(
                  context,
                  title: "Hello",
                  message: "This is the Panara Info Dialog Error.",
                  buttonText: "Okay",
                  onTapDismiss: () {
                    print("User Tap Okay Error Button");
                    Navigator.pop(context);
                  },
                  panaraDialogType: PanaraDialogType.error,
                );
              },
              child: const Text("Show Error Info"),
            ),


            const SizedBox(
              height: 10,
            ),


            const Text(
              "PanaraConfirmDialog & It's Variants",
            ),


            const SizedBox(
              height: 10,
            ),



            TextButton(
              onPressed: () {
                PanaraConfirmDialog.showAnimatedGrow(
                  context,
                  title: "Hello",
                  message: "This is the Panara Confirm Dialog Success.",
                  confirmButtonText: "Confirm",
                  cancelButtonText: "Cancel",
                  onTapCancel: () {
                    print("User Tap Cancel Button");
                    Navigator.pop(context);
                  },
                  onTapConfirm: () {
                    print("User Tap Confirm Button Success");
                    Navigator.pop(context);
                  },
                  panaraDialogType: PanaraDialogType.success,
                );
              },
              child: const Text("Show Success Confirm"),
            ),


            const SizedBox(
              height: 10,
            ),


            TextButton(
              onPressed: () {
                PanaraConfirmDialog.showAnimatedGrow(
                  context,
                  title: "Hello",
                  message: "This is the Panara Confirm Dialog Normal.",
                  confirmButtonText: "Confirm",
                  cancelButtonText: "Cancel",
                  onTapCancel: () {
                    print("User Tap Cancel Button");
                    Navigator.pop(context);
                  },
                  onTapConfirm: () {
                    print("User Tap Confirm Button Normal");
                    Navigator.pop(context);
                  },
                  panaraDialogType: PanaraDialogType.normal,
                );
              },
              child: const Text("Show Normal Confirm"),
            ),


            const SizedBox(
              height: 10,
            ),



            TextButton(
              onPressed: () {
                PanaraConfirmDialog.showAnimatedGrow(
                  context,
                  title: "Hello",
                  message: "This is the Panara Confirm Dialog Warning.",
                  confirmButtonText: "Confirm",
                  cancelButtonText: "Cancel",
                  onTapCancel: () {
                    print("User Tap Cancel Button");
                    Navigator.pop(context);
                  },
                  onTapConfirm: () {
                    print("User Tap Confirm Button Warning");
                    Navigator.pop(context);
                  },
                  panaraDialogType: PanaraDialogType.warning,
                );
              },
              child: const Text("Show Warning Confirm"),
            ),



            const SizedBox(
              height: 10,
            ),



            TextButton(
              onPressed: () {
                PanaraConfirmDialog.showAnimatedGrow(
                  context,
                  title: "Hello",
                  message: "This is the Panara Confirm Dialog Error.",
                  confirmButtonText: "Confirm",
                  cancelButtonText: "Cancel",
                  onTapCancel: () {
                    print("User Tap Cancel Button");
                    Navigator.pop(context);
                  },
                  onTapConfirm: () {
                    print("User Tap Confirm Button Error");
                    Navigator.pop(context);
                  },
                  panaraDialogType: PanaraDialogType.error,
                );
              },
              child: const Text("Show Error Confirm"),
            ),


            const SizedBox(
              height: 10,
            ),


            TextButton(
              onPressed: () {
                PanaraConfirmDialog.showAnimatedGrow(
                  context,
                  title: "Hello",
                  message: "This is the Panara Confirm Dialog Success.",
                  confirmButtonText: "Confirm",
                  cancelButtonText: "Cancel",
                  onTapCancel: () {
                    print("User Tap Cancel Button");
                    Navigator.pop(context);
                  },
                  onTapConfirm: () {
                    print("User Tap Confirm Button Success");
                    Navigator.pop(context);
                  },
                  panaraDialogType: PanaraDialogType.success,
                  noImage: true,
                );
              },
              child: const Text("Show No Image Success Confirm"),
            ),


            const SizedBox(
              height: 10,
            ),


            TextButton(
              onPressed: () {
                PanaraConfirmDialog.showAnimatedGrow(
                  context,
                  title: "Hello",
                  message: "This is the Panara Confirm Dialog Normal.",
                  confirmButtonText: "Confirm",
                  cancelButtonText: "Cancel",
                  onTapCancel: () {
                    print("User Tap Cancel Button");
                    Navigator.pop(context);
                  },
                  onTapConfirm: () {
                    print("User Tap Confirm Button Normal");
                    Navigator.pop(context);
                  },
                  panaraDialogType: PanaraDialogType.normal,
                  noImage: true,
                );
              },
              child: const Text("Show No Image Normal Confirm"),
            ),


            const SizedBox(
              height: 10,
            ),


            TextButton(
              onPressed: () {
                PanaraConfirmDialog.showAnimatedGrow(
                  context,
                  title: "Hello",
                  message: "This is the Panara Confirm Dialog Warning.",
                  confirmButtonText: "Confirm",
                  cancelButtonText: "Cancel",
                  onTapCancel: () {
                    print("User Tap Cancel Button");
                    Navigator.pop(context);
                  },
                  onTapConfirm: () {
                    print("User Tap Confirm Button Warning");
                    Navigator.pop(context);
                  },
                  panaraDialogType: PanaraDialogType.warning,
                  noImage: true,
                );
              },
              child: const Text("Show No Image Warning Confirm"),
            ),


            const SizedBox(
              height: 10,
            ),


            TextButton(
              onPressed: () {
                PanaraConfirmDialog.showAnimatedGrow(
                  context,
                  title: "Hello",
                  message: "This is the Panara Confirm Dialog Error.",
                  confirmButtonText: "Confirm",
                  cancelButtonText: "Cancel",
                  onTapCancel: () {
                    print("Tap Cancel Button");
                    Navigator.pop(context);
                  },
                  onTapConfirm: () {
                     print("User Tap Confirm Button Error");
                    Navigator.pop(context);
                  },
                  panaraDialogType: PanaraDialogType.error,
                  noImage: true,
                );
              },
              child: const Text("Show No Image Error Confirm"),
            ),


            const SizedBox(
              height: 10,
            ),



          ],
        ),
      ),
    );
  }
}