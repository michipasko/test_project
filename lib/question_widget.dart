import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  Question({this.questionText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Text(
        questionText,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
