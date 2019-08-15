import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

@immutable
class QuestionModel {
  final String question;
  final List<String> answers;

  QuestionModel({@required this.question, @required this.answers});
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int index = 0;

  final List<QuestionModel> _questions = [
    QuestionModel(
        question: 'What\'s your favorite color?',
        answers: ['one', 'two', 'three']),
    QuestionModel(
        question: 'What\'s your favorite animal?',
        answers: ['one', 'two', 'three']),
  ];

  void _updateIndex(value) {
    setState(() => index = value);
  }

  void _answerQuestion(String question) {
    print(index);
    if (index < _questions.length) {
      _updateIndex(index + 1);
    }
  }

  List<Widget> _createQuestion() {
    if (index == _questions.length) {
      return [
        Text('No more questions!'),
        RaisedButton(
          child: Text('Play again'),
          onPressed: () {
            _updateIndex(0);
          },
        )
      ];
    }

    final List<Widget> answerButtons =
        _questions.elementAt(index).answers.map((answer) {
      return RaisedButton(
        child: Text(answer),
        onPressed: () {
          _answerQuestion(answer);
        },
      );
    }).toList();

    return [
      Text(_questions.elementAt(index).question),
      Column(
        children: answerButtons,
      )
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
