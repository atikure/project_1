import 'package:flutter/material.dart';


class MyTextWidget extends StatelessWidget {
  MyTextWidget({
    super.key, this.titel, this.tSize, this.tColor, this.maxLines,  this.overflow,
  });

  String? titel;
  double? tSize;
  Color? tColor;
  int? maxLines;
  TextOverflow? overflow;

  @override
  Widget build(BuildContext context) {
    return Text(
      titel!,
      maxLines: maxLines,
      overflow: overflow,
      style: TextStyle(color: tColor ?? Colors.blue, fontSize: tSize ?? 30,),
    );
  }
}