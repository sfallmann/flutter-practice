import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String text;
  final Function onPressed;

  const Answer({@required this.text, @required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.green,
        child: Text(text, style: TextStyle(color: Colors.white),),
        onPressed: onPressed,
      ),
    );
  }
}