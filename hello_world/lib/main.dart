import 'package:flutter/material.dart';
import 'package:hello_world/quiz.dart';
import 'package:hello_world/result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _resultScore = 0;
  var _questionIndex = 0;
  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 0},
        {'text': 'Red', 'score': 1},
        {'text': 'White', 'score': 2},
        {'text': 'Pink', 'score': 3}
      ]
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Giraffe', 'score': 0},
        {'text': 'Eagle', 'score': 1},
        {'text': 'Lion', 'score': 2}
      ]
    },
    {
      'questionText': 'What\'s your favorite instructor?',
      'answers': [
        {'text': 'Kirill', 'score': 0},
        {'text': 'Dima', 'score': 1},
        {'text': 'Ivan', 'score': 2},
        {'text': 'Andrey', 'score': 3}
      ]
    }
  ];

  void _answerQuestion(int score) {
    setState(() {
      _resultScore += score;
      ++_questionIndex;
    });
  }

  void _resetQuiz() {
    setState(() {
      _resultScore = 0;
      _questionIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_resultScore, _resetQuiz),
      ),
    );
  }
}
