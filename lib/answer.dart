import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String title;

  Answer(this.title, this.selectHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
        child: Text(
          title,
          style: TextStyle(color: Colors.white),
        ),
        onPressed: selectHandler,
        color: Colors.blue,
      ),
      width: double.infinity,
    );
  }
}
