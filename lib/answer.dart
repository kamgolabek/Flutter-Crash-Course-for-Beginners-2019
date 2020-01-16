import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answerText;

  final Function selectHandler;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.only(left: 52, right: 52, top: 12),
        child: RaisedButton(
          color: Colors.blue,
          textColor: Colors.white,
          child: Text(answerText),
          onPressed: selectHandler,
        ));
  }
}
