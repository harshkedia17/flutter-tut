import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionNumber;
  final Function answerQuestion;


  Quiz(this.questions, this.answerQuestion, this.questionNumber);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[questionNumber]['questionText'] as String),
        ...(questions[questionNumber]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answers(
              () => answerQuestion(answer['score']), answer['text'] as String);
        }).toList()
      ],
    );
  }
}
