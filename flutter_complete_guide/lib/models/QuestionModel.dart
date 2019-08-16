import 'package:flutter/material.dart';

@immutable
class QuestionModel {
  final String question;
  final List<String> answers;

  QuestionModel({@required this.question, @required this.answers});
}