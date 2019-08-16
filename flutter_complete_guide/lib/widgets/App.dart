import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/models/QuestionModel.dart';
import 'package:flutter_complete_guide/widgets/Question.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  int index = 0;

  final List<QuestionModel> _questions = [
    QuestionModel(
        question: 'What\'s your favorite color?',
        answers: ['one', 'two', 'three']),
    QuestionModel(
        question: 'What\'s your favorite animal?',
        answers: ['one', 'two', 'three']),
  ];

  void updateIndex(value) {
    setState(() => index = value);
  }

  void answerQuestion(String question) {
    print(index);
    if (index < _questions.length) {
      updateIndex(index + 1);
    }
  }

  List<Widget> _createQuestion() {
    if (index == _questions.length) {
      return [
        Text('No more questions!'),
        RaisedButton(
          child: Text('Play again'),
          onPressed: () {
            updateIndex(0);
          },
        )
      ];
    }
    return [
      Question(
          text: _questions[index].question,
          answers: _questions[index].answers,
          onAnswer: answerQuestion)
    ];
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
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: _createQuestion(),
          ),
        ));
  }
}