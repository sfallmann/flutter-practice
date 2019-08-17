import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/models/QuestionModel.dart';
import 'package:flutter_complete_guide/widgets/Question.dart';
import 'package:flutter_complete_guide/widgets/Answer.dart';

class Quiz extends StatelessWidget {
  final List<QuestionModel> questions;
  final int questionIndex;
  final Function answerCallback;

  const Quiz(
      {@required this.questions,
      @required this.answerCallback,
      @required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Question(
        text: questions[questionIndex].question,
      ),
      ...questions[questionIndex].answers.map((answer) {
        return Answer(
          text: answer.text,
          onPressed: () {
            answerCallback(answer.score);
          },
        );
      }),
    ]);
  }
}
