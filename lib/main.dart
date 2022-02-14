import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

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
    var questions = [
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
      body: Column(children: [
        Question(questions[_questionIndex]["questionText"] as String),
        ...(questions[_questionIndex]['answers'] as List<String>).map((answer) {
          return Answer(_answerQuestion, answer);
        }).toList()
      ],),
    ));
  }
}