import 'package:flutter/material.dart';

class TextControl extends StatelessWidget {
  final Function changeHandler;

  const TextControl(this.changeHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: RaisedButton(
      color: Colors.blueAccent,
      textColor: Colors.white,
      onPressed: changeHandler,
      child: Text('Change Text'),
    ));
  }
}
