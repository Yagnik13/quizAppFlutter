import 'package:first_demo/result.dart';
import 'package:flutter/material.dart';
import './quiz.dart'; // (./ means that look into the same folder)
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState(); //_ClassName - means private classs
  }
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.

  final _questions = const [
    {
      'questionText': 'What\'s your favorite Color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 2},
        {'text': 'Gray', 'score': 1}
      ],
    },
    {
      'questionText': 'What\'s your favorite Device?',
      'answers': [
        {'text': 'iOS', 'score': 10},
        {'text': 'Android', 'score': 5},
        {'text': 'Windows', 'score': 1}
      ],
    },
    {
      'questionText': 'What\'s your favorite OS?',
      'answers': [
        {'text': 'MAC', 'score': 10},
        {'text': 'Windows', 'score': 5},
        {'text': 'Ubantu', 'score': 1}
      ],
    }
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answersQues(int score) {
    // var aBool = true ;
    // aBool = false;

    _totalScore += score;

    setState(() {
      _questionIndex += 1;
    });
    print(_questionIndex);

    if (_questionIndex < _questions.length) print('we have more questions');
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text('Quiz'),
          ),
          body: _questionIndex < _questions.length
              ? Quiz(
                  questions: _questions,
                  ansQuestion: _answersQues,
                  questionIndex: _questionIndex)
              : Result(_totalScore,_resetQuiz),
        ));
  }
}
