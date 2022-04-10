import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wordle Answers',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 11, 133, 62), // appbar color.
          foregroundColor: Colors.white, // appbar text color.
          title: const Text('Daily WORDLE Answers'),
        ),
        body: const Center(
          child: Text('Enter a number'),
        ),
      ),
    );
  }
}