import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function ansQuestion;

  Quiz({
    @required this.questions,
    @required this.ansQuestion,
    @required this.questionIndex
    });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[questionIndex]['questionText']),
        ...(questions[questionIndex]['answers'] as List<Map<String,Object>>).map((answer) {
          //never operator (...)
          return Answer(() => ansQuestion(answer['score']), answer['text']);
        }).toList()
      ],  
    );
  }
}
