import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import './question.dart';

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

    if (kDebugMode) {
      print('Answer Chosen');
    }
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What is your favourite colour?',
      'What is your favourite animal?'
    ];
    return MaterialApp(home: Scaffold(
      appBar: AppBar(title: const Text('My First App')),
      body: Column(children: [
        Question(questions[_questionIndex]),
        ElevatedButton(child: Text('Answer 1'), onPressed: _answerQuestion),
        ElevatedButton(child: Text('Answer 2'), onPressed: _answerQuestion),
        ElevatedButton(child: Text('Answer 3'), onPressed: _answerQuestion),
      ],),
    ));
  }
}