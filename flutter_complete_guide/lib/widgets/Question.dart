import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/widgets/AnswerButton.dart';

class Question extends StatelessWidget {
  final String text;
  final List<String> answers;
  final Function onAnswer;

  Question(
      {@required this.text, @required this.answers, @required this.onAnswer});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(text),
        Column(
          children: answers.map((answer) {
            return AnswerButton(
              text: answer,
              onPressed: () {
                onAnswer(answer);
              },
            );
          }).toList(),
        ),
      ],
    );
  }
}