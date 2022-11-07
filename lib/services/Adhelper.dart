import 'dart:io';

class AdHelper{

  static String homePageBannerAd(){
    if(Platform.isAndroid){
       return "ca-app-pub-3940256099942544/6300978111";             // <-- Banner Ad
    }else{
      return "";
    }
  }


  static String fullPageAd(){
    if(Platform.isAndroid){
       return "ca-app-pub-3940256099942544/1033173712";           // <-- Interstitial Ad FullPage
    }else{
      return "";
    }
  }
  
  
  
}