import 'package:flutter/material.dart';
import 'package:project_1/screen/custom_widegt/text_widget.dart';

class MyButton extends StatelessWidget {
  MyButton({super.key, required this.bName, this.bColor, required this.onTap, this.bWith});

  String bName;
  Color? bColor;
  VoidCallback onTap;
  double? bWith;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        color: Colors.blue ?? Colors.blue,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
              child: MyTextWidget(
                titel: bName,
                tColor: Colors.white,
                tSize: 15,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
