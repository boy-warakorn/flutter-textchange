import 'package:flutter/material.dart';
import './text_output.dart';

class TextControl extends StatefulWidget {
  
  @override
  _TextControlState createState() => _TextControlState();
}

class _TextControlState extends State<TextControl> {
  var text = 'Hello haha';
  @override
  Widget build(BuildContext context) {
    return Column(
          children: <Widget>[
            Center(
              child: TextOutput(text),
            ),
            RaisedButton(
              onPressed: () {
                setState(() {
                  text = 'Covid-19 is here';
                });
              },
              child: Text('changed text'),
            )
          ],
        );
  }
}
