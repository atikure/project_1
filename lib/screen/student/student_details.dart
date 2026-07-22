import 'package:flutter/material.dart';
import 'package:project_1/screen/custom_widegt/text_widget.dart';

class StudentDetails extends StatefulWidget {
  StudentDetails({
    super.key,
    required this.img,
    required this.name,
    required this.email,
    required this.phone,
    required this.dep,
    this.status,
  });
  String img;
  String name;
  String email;
  String phone;
  String dep;
  bool? status;

  @override
  State<StudentDetails> createState() => _StudentDetailsState();
}

class _StudentDetailsState extends State<StudentDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: MyTextWidget(titel: "Student Details"),
        centerTitle: true,
        backgroundColor: Colors.blue,
        actions: [
          widget.status == true ? CircleAvatar(
            radius: 10,
            backgroundColor: Colors.green,
          ) : CircleAvatar(
            radius: 10,
            backgroundColor: Colors.red,
          ),
          SizedBox(width: 20,)
        ],
      ),
      body: Column(
        //crossAxisAlignment:
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage("${widget.img}"),
            radius: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [MyTextWidget(titel: "${widget.name}", tSize: 30)],
          ),
          MyTextWidget(titel: "${widget.email}", tSize: 27),
          MyTextWidget(titel: "${widget.phone}", tSize: 23),
          MyTextWidget(titel: "${widget.dep}", tSize: 20),
        ],
      ),
    );
  }
}
