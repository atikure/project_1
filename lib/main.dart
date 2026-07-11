import 'package:flutter/material.dart';
import 'package:project_1/screen/login.dart';
import 'package:project_1/screen/reg.dart';
import 'package:project_1/screen/splash.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}
