import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  final String text;
  final Function onPressed;

  const AnswerButton({@required this.text, @required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text(text),
      onPressed: onPressed,
    );
  }
}