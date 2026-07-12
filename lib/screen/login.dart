import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:project_1/screen/forgot.dart';
import 'package:project_1/screen/home.dart';
import 'package:project_1/screen/reg.dart';
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
          Text("Sign In Here", style: TextStyle(
            fontWeight: FontWeight.bold,
              color: Colors.blue,fontSize: 20),),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: email,
              decoration: InputDecoration(
                labelText: "Email",
                prefixIcon: Icon(Icons.email),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                )
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: password,
              decoration: InputDecoration(
                  labelText: "Password",
                prefixIcon: Icon(Icons.lock),
                suffixIcon: Icon(Icons.remove_red_eye),
                
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                )
              ),
            ),
          ),
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