import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void answerQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
      if (questionIndex == 3) {
        questionIndex = 0;
      }
    });
    print('Answer Chosen ');
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText': 'What\'s your favorite color?',
        'answers': ['Black', 'Red', 'Green', 'White'],
      },
      {
        'questionText': 'What\'s your favorite animal?',
        'answers': ['Elephant', 'Snake', 'Lion', 'Rabbit'],
      },
      {
        'questionText': 'Who\'s your favorite instructor?',
        'answers': ['Max', 'Max', 'James', 'Warren'],
      },
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('My First App'), centerTitle: true),
        body: Column(
          children: [
            Question(
              questions[questionIndex]['questionText'] as String,
            ),
            Answer(answerQuestion),
            Answer(answerQuestion),
            Answer(answerQuestion),
          ],
        ),
      ),
    );
  }
}

// stopped at 4:26 quiz app