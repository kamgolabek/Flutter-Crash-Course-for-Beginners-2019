import 'package:flutter/material.dart';

import './questions.dart';
import './answer.dart';

void main(List<String> args) {
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
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText': 'Whats your favorite color ?',
        'answers': ['Black', 'Red', 'Green', 'White']
      },
      {
        'questionText': 'Whats your favorite animal ?',
        'answers': ['Dog', 'Rabit', 'Elephant', 'Lion']
      },
      {
        'questionText': 'What  is your age  ?',
        'answers': ['< 10', ' > 20', '<50>']
      }
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first App2'),
        ),
        body: Column(
          children: [
            Question(questions[_questionIndex]['questionText']),
            ...(questions[_questionIndex]['answers'] as List<String>).map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList()
          ],
        ),
      ),
    );
  }
}
