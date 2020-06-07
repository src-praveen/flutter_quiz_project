import 'package:flutter/material.dart';
import 'package:flutter_quiz_project/quiz.dart';
import 'package:flutter_quiz_project/result.dart';

void main() => runApp(MyClass());

class MyClass extends StatefulWidget {
  @override
  _MyClassState createState() => _MyClassState();
}

class _MyClassState extends State<MyClass> {
  int _questionIndex = 0;
  int _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _totalScore = 0;
      _questionIndex = 0;
    });
  }

  final _questions = const [
    {
      "questionText": "What is your favorite color ?",
      "answers": [
        {"text": "Red", "score": 2},
        {"text": "Green", "score": 10},
        {"text": "Yello", "score": 5}
      ]
    },
    {
      "questionText": "What's your favorite car modal ?",
      "answers": [
        {"text": "Swift", "score": 5},
        {"text": "i20", "score": 2},
        {"text": "Jeep Compose", "score": 10}
      ]
    },
    {
      "questionText": "What is your favorite Hero ?",
      "answers": [
        {"text": "Rajni", "score": 10},
        {"text": "Kamal", "score": 2},
        {"text": "Vijay", "score": 5}
      ]
    }
  ];
  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              'Quiz',
              style: TextStyle(color: Colors.white),
            ),
            backgroundColor: Colors.red,
          ),
          body: Container(
            child: _questionIndex < _questions.length
                ? Quiz(
                    questions: _questions,
                    questionIndex: _questionIndex,
                    answerQuestion: _answerQuestion)
                : Result(_totalScore, _resetQuiz),
          ),
        ),
      ),
    );
  }
}
