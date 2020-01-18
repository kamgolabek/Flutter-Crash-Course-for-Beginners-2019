import 'package:flutter/material.dart';

import './quiz.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  final questions = const [
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
      'answers': ['< 10', ' > 10', '>30']
    }
  ];

  void _answerQuestion() {

    setState(() {
        _questionIndex += 1;
      });
    
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('My first App2'),
          ),
          body: _questionIndex < questions.length
              ? Quiz(
                  questions: questions,
                  answerQuestion: _answerQuestion,
                  questionIndex: _questionIndex,
                )
              : Center(
                  child: Text('You did it!'),
                )),
    );
  }
}
