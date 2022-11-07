


import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_widgets/services/Adhelper.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class AdProvider with ChangeNotifier {
   


  bool isHomePageBannerLoaded = false;
  late BannerAd homePageBanner;


  bool isFullPageAdLoaded = false;
  late InterstitialAd fullPageAd;

  

  void initializeHomePageBanner ()async{             // <-- Yah Tarika hai BannerAd Method
    homePageBanner = BannerAd(
      size: AdSize.banner, 
      adUnitId: AdHelper.homePageBannerAd(),
       listener: BannerAdListener(
        onAdLoaded: (ad){
          log("HomePage Banner Loaded");
          isHomePageBannerLoaded = true;
        },
        onAdClosed: (ad){
          ad.dispose();
          isHomePageBannerLoaded = false;
        },
        onAdFailedToLoad: (ad,error){
          log(error.toString());
          isHomePageBannerLoaded = false;
        }
        
       ), 
       request: AdRequest()
      );

      await homePageBanner.load();
      notifyListeners();
  }





  void initializeFullPageAd () async{                       // <-- Yah Tarika hai FullPadeAd Method
   await InterstitialAd.load(
    adUnitId: AdHelper.fullPageAd(),
    request: AdRequest(),
    adLoadCallback: InterstitialAdLoadCallback(
      onAdLoaded: (ad){
        log("Full Page Ad Loaded");
        fullPageAd = ad;
        isFullPageAdLoaded = true;
      }, 
      onAdFailedToLoad: (err){
        log(err.toString());
        isFullPageAdLoaded = false;
      }
      )
    );
    notifyListeners();
  }


}