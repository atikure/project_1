import 'dart:developer';
import 'package:flutter/material.dart';
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
          Text("Login Here", style: TextStyle(
            fontWeight: FontWeight.bold,
              color: Colors.blue,fontSize: 20),),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: email,
              decoration: InputDecoration(
                labelText: "Email",
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
                  labelText: "Passeord",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                )
              ),
            ),
          ),
          InkWell(
            onTap: (){
              if(email.text == "atikure@gmail.com" && password.text == "1234"){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> HomeScreen()));
              }
              else{
                log("Wrong gmail & password");
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Wrong gmail & password"),backgroundColor: Colors.blue,));
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
                    child: Text("Login",style: TextStyle(color: Colors.white),),
                  ),
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 10,
            children: [
              Text("Not Register Yet ?"),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> RegScreen()));
                  log("===");
                },
                  child: Text("Register Now", style: TextStyle(color: Colors.blue),)),
            ],
          )
        ],
      ),
    );
  }
}
