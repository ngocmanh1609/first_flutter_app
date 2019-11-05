import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;
  var totalScore = 0;

  void resetQuiz() {
    setState(() {
      totalScore = 0;
      questionIndex = 0;
    });
  }

  void answerQuestion(int score) {
    totalScore += score;
    setState(() {
      if (questionIndex < questions.length) {
        questionIndex = questionIndex + 1;
      }
    });
  }

  var questions = [
    {
      "question": "What's is your favorite color?",
      "answer": [
        {"text": "White", "score": 10},
        {"text": "Orange", "score": 5},
        {"text": "Blue", "score": 4},
        {"text": "Black", "score": 1}
      ]
    },
    {
      "question": "What's is your favorite animal?",
      "answer": [
        {"text": "Lion", "score": 10},
        {"text": "Cat", "score": 8},
        {"text": "Dog", "score": 6},
        {"text": "Elephant", "score": 2},
        {"text": "Rat", "score": 4},
        {"text": "Bird", "score": 3}
      ]
    },
    {
      "question": "What's is your favorite instructor?",
      "answer": [
        {"text": "A", "score": 10},
        {"text": "B", "score": 9},
        {"text": "C", "score": 7}
      ]
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First App Title"),
          centerTitle: true,
        ),
        body: questionIndex < questions.length
            ? Quiz(
                answerQuestion: answerQuestion,
                questionIndex: questionIndex,
                questions: questions,
              )
            : Result(totalScore, resetQuiz),
      ),
    );
  }
}
