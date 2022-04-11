// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  // ignore: use_key_in_widget_constructors
  const Question(this.questionText);


//First text
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(30),
      child: Text(
        questionText,
        style: const TextStyle(fontSize: 25, height: 2, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    );
  }
}