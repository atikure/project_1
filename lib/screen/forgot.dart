

import 'package:flutter/material.dart';

class ForgotScreen extends StatefulWidget {
  const ForgotScreen({super.key});

  @override
  State<ForgotScreen> createState() => _ForgotScreenState();
}

class _ForgotScreenState extends State<ForgotScreen> {
  TextEditingController email = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Reset password?", style: TextStyle(
      fontWeight: FontWeight.bold,
          color: Colors.blue,fontSize: 30)),
          Text("Enter the email address associated with your account.", style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.blue,fontSize: 15)),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: email,
              decoration: InputDecoration(
                  labelText: "Email",
                  prefixIcon: Icon(Icons.email),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
              ),
            ),
          ),
          InkWell(
            onTap: (){},
            child: Card(
              margin: EdgeInsets.symmetric(horizontal: 20,vertical: 8),
              color: Colors.blue,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Send",style: TextStyle(color: Colors.white),),
                  ),
                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
}
