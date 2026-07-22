import 'package:flutter/material.dart';
import 'package:project_1/data/students.dart';
import 'package:project_1/screen/custom_widegt/text_widget.dart';
import 'package:project_1/screen/student/student_add.dart';
import 'package:project_1/screen/student/student_details.dart';

class StudentsList extends StatefulWidget {
  const StudentsList({super.key});

  @override
  State<StudentsList> createState() => _StudentsListState();
}

class _StudentsListState extends State<StudentsList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Student List", style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.blue,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => StudentAdd()),
              ).then((v) {
                setState(() {});
              });
            },
            icon: Icon(Icons.add_box_outlined),
            color: Colors.white,
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: Students.s.length,
        itemBuilder: (context, i) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
          child: ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => StudentDetails(
                    img: Students.s[i]["image"],
                    name: Students.s[i]["name"],
                    email: Students.s[i]["email"],
                    phone: Students.s[i]["phone"],
                    dep: Students.s[i]["dep"],
                    status: Students.s[i]["inActive"],
                  ),
                ),
              );
            },
            tileColor: Colors.blue.shade100,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            leading: CircleAvatar(
              child: MyTextWidget(titel: "${Students.s[i]["id"]}", tSize: 15),
            ),
            title: MyTextWidget(titel: "${Students.s[i]["name"]}", tSize: 25),
            subtitle: MyTextWidget(
              titel: "${Students.s[i]["email"] ?? "N/A"}",
              tSize: 15,
            ),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(onPressed: () {}, icon: Icon(Icons.delete)),
                IconButton(onPressed: () {}, icon: Icon(Icons.edit_note)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
