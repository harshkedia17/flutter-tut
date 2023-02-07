// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:flutter/material.dart';
import 'quiz.dart';
import 'result.dart';
// void main() {
//   runApp(MyApp());
// }

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _totalScore = 0;
  var _questionNumber = 0;
  final questions = const [
    {
      'questionText': 'What\'s your favourite color?',
      'answers': [
        {'text': 'Red', 'score': 10},
        {'text': 'Green', 'score': 5},
        {'text': 'Orange', 'score': 6},
        {'text': 'Black', 'score': 0},
      ]
    },
    {
      'questionText': 'What\'s your favourite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 10},
        {'text': 'Dog', 'score': 5},
        {'text': 'Cat', 'score': 6},
        {'text': 'Snake', 'score': 0},
      ]
    },
    {
      'questionText': 'Who\'s your favourite instructor?',
      'answers': [
        {'text': 'Max', 'score': 10},
        {'text': 'Max', 'score': 5},
        {'text': 'Max', 'score': 6},
        {'text': 'Max', 'score': 0},
      ]
    },
  ];
  var totalScore = 0;
  void answerQuestion(int score) {
    totalScore += score;
    print(_questionNumber);
    setState(() {
      _questionNumber++;
    });
  }

  void _resetQuiz() {
    setState(() {
      _questionNumber = 0;
      totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('My First App'),
            ),
            body: _questionNumber < questions.length
                ? Quiz(questions, answerQuestion, _questionNumber)
                : Result(totalScore,_resetQuiz)));
  }
}
