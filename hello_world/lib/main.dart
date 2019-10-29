import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void answerQuestion() {
    setState(() {
      ++_questionIndex;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    final questions = [
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
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first app!'),
        ),
        body: Column(
          children: <Widget>[
            Question(
              questions[_questionIndex]['questionText'],
            ),
            ...(questions[_questionIndex]['answers'] as List<String>).map((element) {
              return Answer(answerQuestion, element);
            }).toList(),
          ],
        ),
      ),
    );
  }
}
