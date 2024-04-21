import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:taxiassist/Utils/app_color/app_colors.dart';
import 'package:taxiassist/Utils/button/round_button.dart';
import 'package:taxiassist/Utils/textfield/text_fields.dart';
import 'package:taxiassist/View/Register/register.dart';

class  Login_Page extends StatelessWidget {
  const  Login_Page({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordContoller = TextEditingController();
    return  Scaffold(
      backgroundColor: AppColors.blackColor,
      body:  SafeArea(
          child: Center(
            child: Column(
              children: [
                SizedBox(height: MediaQuery.of(context).size.height*0.1,),
                Text("Infos taxi App",style: TextStyle(color: Colors.yellow,fontSize: 30, fontWeight: FontWeight.bold),),
                SizedBox(height: MediaQuery.of(context).size.height*0.1,),
                MyTextField(hintText: "abc@xyz.com", labelText: "Email", controller: emailController),
                SizedBox(height: MediaQuery.of(context).size.height*0.03,),
                MyTextField(hintText: "Strong password", labelText: "Password", controller: passwordContoller),
                SizedBox(height: MediaQuery.of(context).size.height*0.1,),
                MyButton(ontap: (){}, text: "Login"),
                SizedBox(height: MediaQuery.of(context).size.height*0.03,),
                MyButton(ontap: (){}, text: "Sign up using phone number"),
                TextButton(onPressed: (){
                  Get.to(() => Register_Page());
                }, child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Not a member? ",style: TextStyle(color: AppColors.whiteColor),),
                    SizedBox(width: MediaQuery.of(context).size.width*0.01 ,)
                    ,Text("Register",style: TextStyle(color: AppColors.purpleColor),)
                  ],
                )),
                

              ],
            ),
          ),
       ),
      
    );
  }
}