import 'package:flutter/material.dart';
import 'package:top_modal_sheet/top_modal_sheet.dart';

// First Add package locction --> pubspec.yaml / This --> ( top_modal_sheet: ^2.0.1)






class show_TopModal_Sheet extends StatefulWidget {
  const show_TopModal_Sheet({Key? key}) : super(key: key);

  @override
  State<show_TopModal_Sheet> createState() => _show_TopModal_SheetState();
}

class _show_TopModal_SheetState extends State<show_TopModal_Sheet> {
  var _topModalData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ShowTopModalSheet Use"),
      ),
      body: Container(
          child: Center(
        child: MaterialButton(
          color: Colors.pink,
          elevation: 5,
          child: const Text("Show TopModal 1"),
          onPressed: () async {
            var value = await showTopModalSheet<String?>(context, DumyModal());

            setState(() {
              _topModalData = value;
            });
          },
        ),
      )),
    );
  }
}

class DumyModal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: double.infinity,
      color: Colors.yellow,
      child: Center(child: Text("ShowTopModalSheet")),
    );
  }
}
