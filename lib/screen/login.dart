import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:project_1/screen/custom_widegt/text_widget.dart';
import 'package:project_1/screen/forgot.dart';
import 'package:project_1/screen/home.dart';
import 'package:project_1/screen/reg.dart';
import 'custom_widegt/text_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}
class _LoginScreenState extends State<LoginScreen> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network("https://coderangon.com/frontend/assets/images/logo/lgo.png"),
          MyTextWidget(titel: "Sign In Here",),
          MyTextField(email: email,hint: "Email",),
          MyTextField(email: password, hint: "Password"),
          Container(
            alignment: Alignment.centerRight,
            child: InkWell(
                onTap: (){
                  //Navigator.push(context, MaterialPageRoute(builder: (context)=> RegScreen()));
                  //log("===");
                },
                child:
                InkWell(
                  onTap: (){
                    //log("===");
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> ForgotScreen()));
                  },
                  child: Text("Forgotten password?", style: TextStyle(color: Colors.blue),
                  ),
                )),
          ),
          InkWell(
            onTap: (){
              if(email.text == "atikure@gmail.com" && password.text == "1234"){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> HomeScreen()));
              }
              else{
                log("Wrong Gmail & Password");
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:
                Text("Wrong Gmail & Password"),backgroundColor: Colors.blue,));
              }
            },
            child: Card(
              margin: EdgeInsets.symmetric(horizontal: 20,vertical: 8),
              color: Colors.blue,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Sign In",style: TextStyle(color: Colors.white),),
                  ),
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 10,
            children: [
              Text("Don't have an account?"),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> RegScreen()));
                  //log("===");
                },
                  child: Text("Sign Up", style: TextStyle(color: Colors.blue),
                  )),
            ],
          )
        ],
      ),
    );
  }
}

