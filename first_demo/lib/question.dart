import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String
      questionsText; //final means this value never change after initilization

  Question(this.questionsText);

  @override
  Widget build(BuildContext context) {
    //trying textStyle
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        questionsText,
        style: TextStyle(fontSize: 20),
        textAlign: TextAlign.center,
      ),
    );
  }
}
