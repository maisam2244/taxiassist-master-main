

import 'dart:async';

import 'package:get/get.dart';
import 'package:taxiassist/View/Home_screen/Home_page.dart';
import 'package:taxiassist/View/Splash_screen/splash_screen.dart';

class SplashScreenController  {

  void splashTimer() {
    Timer(Duration(seconds: 3), () { 
      Get.to(() => Home_Page());
    });
  }
  
}