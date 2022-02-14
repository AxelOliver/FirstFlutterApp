import 'package:flutter/material.dart';

import 'quiz.dart';
import 'result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  void _answerQuestion() {
    setState(() {
      _questionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    var _questions = [
      {
        "questionText": 'What is your favourite colour?',
        "answers": ["Black", "Red", "Green", "White"],
      },
      {
        "questionText": "What is your favourite animal?",
        "answers": ["Dog", "Cat", "Monke", "Lion"],
      },
    ];
    return MaterialApp(home: Scaffold(
      appBar: AppBar(title: const Text('My First App')),
      body: _questionIndex < _questions.length
          ? Quiz(_questions, _answerQuestion, _questionIndex)
          : Result()),
    );
  }
}