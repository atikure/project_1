import 'package:flutter/material.dart';
import 'package:project_1/screen/note_app/home.dart';
import 'package:project_1/screen/student/student_add.dart';
import 'package:project_1/screen/student/student_details.dart';
import 'package:project_1/screen/student/students_list.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StudentsList(),
    );
  }
}