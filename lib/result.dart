import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetQuiz;

  Result(this.resultScore, this.resetQuiz);

  String get resultText {
    String text;
    if (resultScore < 4) {
      text = 'Perfectly!';
    } else if (resultScore < 15) {
      text = 'You are really strange guy then....!!!';
    } else {
      text = 'You suck :(';
    }
    return text;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueGrey,
      child: Center(
        child: Column(
          children: <Widget>[
            Text(
              resultText,
              style: TextStyle(
                color: Colors.yellow,
                fontSize: 32,
              ),
              textAlign: TextAlign.center,
            ),
            FlatButton(
              child: Text('Restart Quiz'),
              onPressed: resetQuiz,
            )
          ],
        ),
      ),
    );
  }
}
