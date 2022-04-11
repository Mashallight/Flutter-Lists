import 'package:flutter/material.dart';

import './question.dart';
import './input.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    // List of words
    var wordle = ["Black", "Arise", "Lamps", "Shawl", "Scare"];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Wordle Answers'),
          backgroundColor: Color.fromARGB(255, 11, 133, 62), // appbar color.
          foregroundColor: Colors.white, // appbar text color.
        ),
        
        body: Column(
          children: [const Question("Enter a number please : "),Input()],
        ),
      ),
    );
  }
}