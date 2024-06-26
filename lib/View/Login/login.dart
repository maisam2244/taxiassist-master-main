import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:taxiassist/Utils/app_color/app_colors.dart';
import 'package:taxiassist/Utils/button/round_button.dart';


class  Login_Page extends StatefulWidget {
  
  
  const  Login_Page({super.key,  });

  @override
  State<Login_Page> createState() => _Login_PageState();
  
}
FirebaseAuth firebaseAuth = FirebaseAuth.instance;



class _Login_PageState extends State<Login_Page> {


  @override
  void initState() {
    // firebaseAuth.authStateChanges().listen((event) {
    //   setState(() {
    //     _user = event;
    //   });
    // })
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    // TextEditingController emailController = TextEditingController();
    // TextEditingController passwordContoller = TextEditingController();
    return  Scaffold(
      backgroundColor: AppColors.blackColor,
      body:  SafeArea(
          child: Center(
            child: Column(
              children: [
                SizedBox(height: MediaQuery.of(context).size.height*0.1,),
                const Text("Infos taxi App",style: TextStyle(color: Colors.yellow,fontSize: 30, fontWeight: FontWeight.bold),),
                SizedBox(height: MediaQuery.of(context).size.height*0.1,),
                 
                // MyTextField(hintText: "abc@xyz.com", labelText: "Email", controller: emailController),
                // SizedBox(height: MediaQuery.of(context).size.height*0.03,),
                // MyTextField(hintText: "Strong password", labelText: "Password", controller: passwordContoller),
                // SizedBox(height: MediaQuery.of(context).size.height*0.1,),
                // MyButton(ontap: (){}, text: "Login"),
                // SizedBox(height: MediaQuery.of(context).size.height*0.03,),
                // MyButton(ontap: (){}, text: "Sign up using phone number"),
                // TextButton(onPressed: (){
                //   Get.to(() => Register_Page());
                // }, child: Row(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children: [
                //     Text("Not a member? ",style: TextStyle(color: AppColors.whiteColor),),
                //     SizedBox(width: MediaQuery.of(context).size.width*0.01 ,)
                //     ,Text("Register",style: TextStyle(color: AppColors.purpleColor),)
                //   ],
                // )),
              MyButton(ontap: loginUserWithGoogle, text: "Sign up with google"),
              SizedBox(height: MediaQuery.of(context).size.height*0.02,),
              MyButton(ontap: (){}, text: "Sign up with phone number")

                

              ],
            ),
          ),
       ),
      
    );
  }
}

void loginUserWithGoogle(){
  try {
    GoogleAuthProvider auth = GoogleAuthProvider();
    firebaseAuth.signInWithProvider(auth);
    

    
  } catch (error) {
    print(error.toString());
    
  }
}