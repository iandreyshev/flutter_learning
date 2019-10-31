import 'package:flutter/material.dart';
import 'package:hello_world/quiz.dart';
import 'package:hello_world/result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': ['Black', 'Red', 'White', 'Pink']
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': ['Giraffe', 'Eagle', 'Lion']
    },
    {
      'questionText': 'What\'s your favorite instructor?',
      'answers': ['Kirill', 'Dima', 'Ivan', 'Andrey']
    }
  ];

  void _answerQuestion() {
    setState(() {
      ++_questionIndex;
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
            : Result(),
      ),
    );
  }
}
