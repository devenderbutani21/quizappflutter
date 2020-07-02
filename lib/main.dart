import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  var _questions = [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': ['Black', 'Blue', 'Orange', 'White'],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': ['Lion', 'Rabbit', 'Elephant', 'Dog'],
    },
    {
      'questionText': 'What\'s your Hobby?',
      'answers': ['Reading', 'Sports', 'Workout', 'PUBG'],
    },
  ];

  void _answerQuestions() {
    setState(() {
      _questionIndex += 1;
    });
    print('Answered Chosen');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz App'),
        ),
        body: Column(
          children: <Widget>[
            Question(_questions[_questionIndex]['questionText']),
            ...(_questions[_questionIndex]['answers'] as List<String>)
                .map((answer) {
              return Answer(_answerQuestions, answer);
            }).toList(),
          ],
        ),
      ),
    );
  }
}
