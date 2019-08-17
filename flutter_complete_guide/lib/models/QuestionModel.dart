import 'package:meta/meta.dart';
import 'package:flutter_complete_guide/models/AnswerModel.dart';

class QuestionModel {
  final String question;
  final List<AnswerModel> answers;

  const QuestionModel({@required this.question, @required this.answers});
}