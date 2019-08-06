import 'package:flutter/material.dart';
import './main.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get getResult {
    String finalResult;
    if (resultScore <= 8) {
      finalResult = 'You are awesome and innocent!';
    } else if (resultScore <= 12) {
      finalResult = 'Pretty likable!';
    } else if (resultScore <= 16) {
      finalResult = 'You are stange!';
    } else {
      finalResult = 'You are bad!';
    }
    return finalResult;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: <Widget>[
        Text(
          getResult,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        FlatButton(
          child: Text('Restart quiz!'),
          textColor: Colors.red,
          onPressed: resetHandler,
        )
      ],
    ));
  }
}
