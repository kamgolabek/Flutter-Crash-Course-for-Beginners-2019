import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

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
  var _totalScore = 0;

  final _questions = const [
    {
      'questionText': 'Whats your favorite color ?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1}
      ]
    },
    {
      'questionText': 'Whats your favorite animal ?',
      'answers': [
        {'text': 'Dog', 'score': 10},
        {'text': 'Frog', 'score': 5},
        {'text': 'Elphant', 'score': 3},
        {'text': 'Dinosaur', 'score': 1}
      ]
    },
    {
      'questionText': 'What  is your favorite Country  ?',
      'answers': [
        {'text': 'UK', 'score': 10},
        {'text': 'Germany', 'score': 5},
        {'text': 'Brasil', 'score': 3},
        {'text': 'Poland', 'score': 1}
      ]
    }
  ];

  void _resetQuiz(){
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
    
  }
  void _answerQuestion(int score) {
    setState(() {
      _questionIndex += 1;
    });

    _totalScore += score;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first App2'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questions: _questions,
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
