import 'package:flutter/material.dart';
import 'package:project_1/screen/custom_widegt/text_field.dart';
import 'package:project_1/screen/login.dart';
class RegScreen extends StatefulWidget {
  const RegScreen({super.key});

  @override
  State<RegScreen> createState() => _RegScreenState();
}

class _RegScreenState extends State<RegScreen> {
  TextEditingController name= TextEditingController();
  TextEditingController email= TextEditingController();
  TextEditingController phone= TextEditingController();
  TextEditingController password= TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Register Here", style: TextStyle(
            fontWeight: FontWeight.bold,
              color: Colors.blue,fontSize: 40),),
          MyTextField(email: name, hint: "Enter your name"),
          MyTextField(email: email, hint: "Enter your email"),
          MyTextField(email: phone, hint: "Enter your phone"),
          MyTextField(email: password, hint: "Enter your password"),

          InkWell(
            onTap: (){
              //log("===");
            },
            child: Card(
              margin: EdgeInsets.symmetric(horizontal: 20,vertical: 8),
              color: Colors.blue,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Register",style: TextStyle(color: Colors.white),),
                  ),
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 10,
            children: [
              Text("Already Registered"),
              InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginScreen()));
                    //log("===");
                  },
                  child: Text("Login Now", style: TextStyle(color: Colors.blue),)),
            ],
          ),
        ],
      ),
    );
  }
}
