// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetQuiz;

  Result(this.resultScore,this.resetQuiz);

  String get resultPhrase {
    var resultText = 'You Did It';
    if (resultScore <= 8) {
      resultText = 'You are awesome and innocent';
    } else if (resultScore <= 12) {
      resultText = 'Pretty Likeable';
    } else {
      resultText = 'Your are quite bad';
    }
    return resultText;
    ;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        Text(
          resultPhrase,
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        TextButton(child: Text('Restart The Quiz'),onPressed:resetQuiz)
      ],
    ),);
  }
}
