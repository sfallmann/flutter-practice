import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/models/QuestionModel.dart';
import 'package:flutter_complete_guide/models/AnswerModel.dart';
import 'package:flutter_complete_guide/widgets/Quiz.dart';
import 'package:flutter_complete_guide/widgets/Result.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  int index = 0;
  int score = 0;

  final List<QuestionModel> _questions = [
    QuestionModel(question: 'What\'s your favorite color?', answers: [
      AnswerModel(text: 'Black', score: 10),
      AnswerModel(text: 'Red', score: 5),
      AnswerModel(text: 'Green', score: 3),
      AnswerModel(text: 'White', score: 1),
    ]),
    QuestionModel(question: 'What\'s your favorite animal?', answers: [
      AnswerModel(text: 'Rabbit', score: 3),
      AnswerModel(text: 'Snake', score: 11),
      AnswerModel(text: 'Elephant', score: 5),
      AnswerModel(text: 'Lion', score: 9),
    ]),
  ];

  void updateIndex(value) {
    setState(() => index = value);
  }

  void restartQuiz() {
    score = 0;
    updateIndex(0);
  }

  void answerQuestion(answerValue) {
    updateIndex(index + 1);
    score += answerValue;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'app',
        home: Scaffold(
            extendBody: true,
            appBar: AppBar(
              centerTitle: true,
              title: Text('Another "First" App'),
            ),
            body: index < _questions.length
                ? Quiz(
                    questions: _questions,
                    questionIndex: index,
                    answerCallback: answerQuestion,
                  )
                : Result(score, restartQuiz)));
  }
}
