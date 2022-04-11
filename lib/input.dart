// ignore_for_file: file_names

import 'package:flutter/material.dart';

//default way to wrtie a statefulwidget
class Input extends StatefulWidget {
  const Input({Key? key}) : super(key: key);

  @override
  _Input createState() => _Input(); //subclass
}

class _Input extends State<Input> {
  final number = TextEditingController();
  // ignore: use_key_in_widget_constructors
  _Input();


//First text
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(30),
      child:Column(
          children: [
            TextField(
              controller: number,
              decoration: const InputDecoration(
                hintText: 'Enter a number',
              ),
            )
          ],
      )
    );
  }
}