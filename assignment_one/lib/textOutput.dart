import 'package:flutter/material.dart';

class TextOutput extends StatelessWidget {

  final String text;

  const TextOutput(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(child: Text(text, style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w600, color: Colors.green),));
  }
}
