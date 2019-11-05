import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final Function resetHandler;

  String get resultPhrase {
    String resultText;
    if (totalScore <= 18) {
      resultText = "You are lucky!";
    } else if (totalScore <= 23) {
      resultText = "You are good!";
    } else if (totalScore <= 25) {
      resultText = "You are the best!";
    } else {
      resultText = "You are bad";
    }
    return resultText;
  }

  Result(this.totalScore, this.resetHandler);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text(
              "Reset Quiz!",
              style: TextStyle(color: Colors.blue),
            ),
            onPressed: resetHandler,
          )
        ],
      ),
    );
  }
}
