import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:taxiassist/View/Home_screen/Home_page.dart';
import 'package:taxiassist/View/Login/login.dart';
import 'package:taxiassist/View/Register/register.dart';
import 'package:taxiassist/View/Splash_screen/splash_screen.dart';
import 'package:taxiassist/firebase_options.dart';

Future<void> main(List<String> args) async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home_Page(),
    );
  }
}
