import 'package:flutter/material.dart';
import 'package:flutter_widgets/provider/Ad_provider.dart';
import 'package:provider/provider.dart';


class NextScreen extends StatefulWidget {
  const NextScreen({Key? key}) : super(key: key);

  @override
  State<NextScreen> createState() => _NextScreenState();
}

class _NextScreenState extends State<NextScreen> {

 

@override
  void initState() {
    // TODO: implement initState
    super.initState();
     AdProvider adProvider = Provider.of(context,listen: false);
     adProvider.initializeFullPageAd();

  }

  
  @override
  Widget build(BuildContext context) {
    return WillPopScope(onWillPop: ()async{
     AdProvider adProvider = Provider.of(context,listen: false);
      if(adProvider.isFullPageAdLoaded){
        adProvider.fullPageAd.show();
      }
      return true;
    },
    child: Scaffold(
      appBar: AppBar(
        title: Text("Check Full Screen Ad "),
      ),

      body: Center(child: Text("Chick Back Button"),),
      
      
    ),
    );
  }
}