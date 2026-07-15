import 'package:flutter/material.dart';
import 'package:project_1/data/notes.dart';
import 'package:project_1/screen/custom_widegt/text_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            leading: CircleAvatar(child: MyTextWidget(titel: "${i + 1}")),
            tileColor: Colors.grey.shade300,
            title: MyTextWidget(titel: "${NoteData.note[i]["title"]}",tColor: Colors.black,),
            subtitle: MyTextWidget(titel: "${NoteData.note[i]["details"]}",
              tColor: Colors.black,tSize: 20,maxLines: 1,overflow: TextOverflow.ellipsis,
            ),
            trailing: InkWell(
              onTap: (){
                NoteData.note.removeAt(i);
                setState(() {});
              },
              child: Icon(Icons.delete, color: Colors.red,),),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          NoteData.note.add(
            {
              "title": "Daily Tasks",
              "details": "Reply to emails, finish UI design, push code to GitHub, and exercise."
            },
          );
          setState(() {});
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
