import 'package:flutter/material.dart';

class Control extends StatelessWidget {
  final Function changeHandler;
  final textIndex;
  

  Control(this.changeHandler,this.textIndex);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
                onPressed: changeHandler,
                child: Text('change text'),
                textColor: Colors.blue,
     );
  }
}