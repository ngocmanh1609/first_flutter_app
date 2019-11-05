import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Text(
        this.questionText,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
      width: double.infinity,
      margin: EdgeInsets.all(20),
    );
  }
}
