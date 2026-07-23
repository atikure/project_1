import 'package:flutter/material.dart';
import 'package:project_1/data/students.dart';
import 'package:project_1/screen/custom_widegt/button.dart';
import 'package:project_1/screen/custom_widegt/text_field.dart';

class StudentAdd extends StatefulWidget {
  const StudentAdd({super.key});

  @override
  State<StudentAdd> createState() => _StudentAddState();
}

class _StudentAddState extends State<StudentAdd> {
  TextEditingController imgUrl = TextEditingController();
  TextEditingController name = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController dep = TextEditingController();
  TextEditingController status = TextEditingController();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Student Add"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          MyTextField(email: imgUrl, hint: "Enter Image Url"),
          MyTextField(email: name, hint: "Enter  Name"),
          MyTextField(email: phone, hint: "Enter  Phone"),
          MyTextField(email: email, hint: "Enter  Email"),
          MyTextField(email: dep, hint: "Enter  Department"),
          MyButton(bName: "ADD", onTap: () {
            var std = {
              "id" : 101,
              "image" : imgUrl.text,
              "name" : name.text,
              "phone" : phone.text,
              "email" : email.text,
              "dep" : dep.text,
              "inActive" : true
            };
            Students.s.add(std);
            Navigator.pop(context);
          },
          ),
        ],
      ),
    );
  }
}
