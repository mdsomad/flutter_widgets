import 'package:flutter/material.dart';
import 'package:flutter_widgets/provider/Ad_provider.dart';
import 'package:flutter_widgets/screens/next_screen.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:provider/provider.dart';


// Add This Package --> provider: ^6.0.4
// add this package --> google_mobile_ads: ^1.3.0






class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Provider.of<AdProvider>(context,listen: false).initializeHomePageBanner();
  }
  
  
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Google Mobile Ads for Flutter with provider'),
      ),

      body: Container(
        child: Center(child: TextButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>NextScreen()));
          
        }, child: Text("Tap Next Screen"))),
      ),
      
      
      
      
      bottomNavigationBar: Consumer<AdProvider>(
        builder:(context, adprovider, child) {
           if(adprovider.isHomePageBannerLoaded){
              return Container(
            height: adprovider.homePageBanner.size.height.toDouble(),
            child: AdWidget(ad:adprovider.homePageBanner),
          );
           }else{
            return Container(height: 0,);
           }
        },),
    );
  }
}