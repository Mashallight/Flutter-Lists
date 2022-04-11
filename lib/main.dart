import 'package:flutter/material.dart';

import './question.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    // This is what we call a map of questions
    var wordle = ["Black", "Arise", "Lamps", "Shawl", "Scare"];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Wordle Answers'),
          backgroundColor: Color.fromARGB(255, 11, 133, 62), // appbar color.
          foregroundColor: Colors.white, // appbar text color.
        ),
        
        
        body: Column(
          children: [const Question("Enter a number please : ")],
        ),
      ),
    );
  }
}