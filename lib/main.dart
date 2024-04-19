import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:taxiassist/View/Login/login.dart';
import 'package:taxiassist/View/Register/register.dart';
import 'package:taxiassist/View/Splash_screen/splash_screen.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splash_Screen(),
    );
  }
}
