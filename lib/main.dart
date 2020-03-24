// 1) Create a new Flutter App (in this project) and output an AppBar and some text
// below it
// 2) Add a button which changes the text (to any other text of your choice)
// 3) Split the app into three widgets: App, TextControl & Text
import 'package:flutter/material.dart';
import './control.dart';
import './text.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _textIndex = 0;
  final _text = const ['Bbboy', 'AAboyy', 'CCCCboy','hellomafaq'];
  void _changeText() {
    setState(() {
      _textIndex++;
    });
    print(_textIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Hello bro')),
        body: Center(
          child: Column(
            children: <Widget>[
              TextChange(_text, _textIndex),
              _textIndex < _text.length-1
                  ? Control(_changeText, _textIndex)
                  : Text('Cant change anymore')
            ],
          ),
        ),
      ),
    );
  }
}
