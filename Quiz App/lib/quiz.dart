import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function answerQuestion;
  final int questionIndex;

  Quiz(
      {@required this.questions,
      @required this.answerQuestion,
      @required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[questionIndex]['questionIndex'],
        ),
        ...(questions[questionIndex]['answer'] as List<Map<String, Object>>)
            .map((e) {
          return Answer(() => answerQuestion(e['score']), e['text']);
        }).toList()
      ],
    );
  }
}
