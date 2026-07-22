import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:project_1/data/notes.dart';
import 'package:project_1/screen/custom_widegt/text_field.dart';
import 'package:project_1/screen/custom_widegt/text_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController title = TextEditingController();
  TextEditingController details = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: MyTextWidget(
          titel: "Note Book",
          tColor: Colors.white,
          tSize: 30,
        ),
        centerTitle: true,
        backgroundColor: Color(0xff93BBFF),
      ),
      body: ListView.builder(
        itemCount: NoteData.note.length,
        itemBuilder: (context, i) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
          child: ListTile(
            onTap: () {
              // log("message");
              showDialog(
                barrierDismissible: false,
                context: context,
                builder: (context) => AlertDialog(
                  title: MyTextWidget(titel: "${NoteData.note[i]["title"]}"),
                  content: MyTextWidget(titel: "${NoteData.note[i]["details"]}",maxLines: 50,tColor: Colors.blue,tSize: 25,),
                  actions: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text("Okay"),
                    ),
                  ],
                ),
              );
            },
            onLongPress: () {
              // log("++++");
            },
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            leading: CircleAvatar(child: MyTextWidget(titel: "${i + 1}",tColor: Colors.black,)),
            tileColor: Colors.grey.shade300,
            title: MyTextWidget(
              titel: "${NoteData.note[i]["title"]}",
              tColor: Colors.black,
            ),
            subtitle: MyTextWidget(
              titel: "${NoteData.note[i]["details"]}",
              tColor: Colors.black,
              tSize: 20,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                InkWell(
                  onTap: () {
                    title.text = "${NoteData.note[i]['title']}";
                    details.text = "${NoteData.note[i]['details']}";
                    showDialog(
                      barrierDismissible: false,
                      context: context,
                      builder: (context) => AlertDialog(
                        title: MyTextWidget(titel: "Update Note"),
                        content: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            MyTextField(email: title, hint: "Enter Your Title"),
                            MyTextField(
                              email: details,
                              hint: "Enter Your Details",
                            ),
                          ],
                        ),
                        actions: [
                          ElevatedButton(onPressed: (){
                            Navigator.pop(context);
                          }, child: Text("Cancel")),
                          ElevatedButton(
                            onPressed: () {
                              if(title.text.isEmpty && details.text.isEmpty){
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(content: Text("Please give me data")),
                                );
                                return ;
                              }
                              NoteData.note[i]["title"] = title.text;
                              NoteData.note[i]["details"] = details.text;
                              setState(() {});
                              Navigator.pop(context);
                            },
                            child: Text("Save"),
                          ),
                        ],
                      ),
                    );
                    setState(() {});
                  },
                  child: Icon(Icons.edit_note, color: Colors.black),
                ),
                InkWell(
                  onTap: () {
                    NoteData.note.removeAt(i);
                    setState(() {});
                  },
                  child: Icon(Icons.delete, color: Colors.red),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          title.clear();
          details.clear();
          showDialog(
            barrierDismissible: false,
            context: context,
            builder: (context) => AlertDialog(
              title: MyTextWidget(titel: "Alert Dialogue"),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  MyTextField(email: title, hint: "Enter Title"),
                  MyTextField(email: details, hint: "Enter Details", mLine: 3),
                ],
              ),
              actions: [
                ElevatedButton(onPressed: (){
                  Navigator.pop(context);
                }, child: Text("Cancel")),
                ElevatedButton(
                  onPressed: () {
                    if (title.text.isEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("Please give me data")),
                      );
                      return;
                    }

                    NoteData.note.add({
                      "title": title.text,
                      "details": details.text,
                    });
                    setState(() {});
                    title.clear();
                    details.clear();
                    Navigator.pop(context);
                  },
                  child: Text("Add"),
                ),
              ],
            ),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
