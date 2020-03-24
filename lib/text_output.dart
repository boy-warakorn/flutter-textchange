import 'package:flutter/material.dart';
import './text_control.dart';

class TextOutput extends StatelessWidget {
  String _mainText ;
  TextOutput(this._mainText);
  @override
  Widget build(BuildContext context) {
    return Text(_mainText);
  }
}
