import 'package:flutter/material.dart';

import './question.dart';

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
    'What\'s your favorite color?',
    'What\'s your favorite animal?',
  ];

  void _answerQuestions() {
    setState(() {
      _questionIndex+=1;
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
            Question(_questions[_questionIndex]),
            RaisedButton(
              child: Text('Answer1'),
              onPressed: _answerQuestions,
            ),
            RaisedButton(
              child: Text('Answer2'),
              onPressed: _answerQuestions,
            ),
            RaisedButton(
              child: Text('Answer3'),
              onPressed: _answerQuestions,
            ),
            RaisedButton(
              child: Text('Answer4'),
              onPressed: _answerQuestions,
            ),
          ],
        ),
      ),
    );
  }
}
