import 'package:flutter/material.dart';

class TextChange extends StatelessWidget {
  final text;
  final textIndex;
  TextChange(this.text,this.textIndex);
  @override
  Widget build(BuildContext context) {
    return Text(
                text[textIndex],
                style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              );
  }
}