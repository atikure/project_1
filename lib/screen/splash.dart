import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:project_1/screen/login.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    //log("===111===");
    timerFun();
    //log("===333===");
    super.initState();
  }
  timerFun()async{
    await Future.delayed(Duration(seconds: 3)).then((v){
      //log("===222===");
      Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginScreen()));
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Image.network("https://coderangon.com/frontend/assets/images/logo/lgo.png")),
    );
  }
}
