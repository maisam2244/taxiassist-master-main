import 'package:flutter/material.dart';
import 'package:taxiassist/Utils/app_color/app_colors.dart';


class Home_Page extends StatelessWidget {
  const Home_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blackColor,
      appBar: AppBar(
        iconTheme: IconThemeData(color: AppColors.whiteColor),
        backgroundColor: AppColors.blackColor,
        title: Text("Your name",style: TextStyle(color: AppColors.whiteColor),),
      ),
      drawer: Drawer(
        backgroundColor: AppColors.blackColor,
        child: const DrawerHeader(child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            
            
          ],
        ),),
        
      
    ));
  }
}
 // Text("Your name",style: TextStyle(color: AppColors.whiteColor),),
            // Text("Your email",style:TextStyle(color: AppColors.whiteColor) ,),