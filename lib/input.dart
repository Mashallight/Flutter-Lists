// ignore: file_names
// ignore_for_file: file_names, deprecated_member_use, use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';

class Input extends StatefulWidget {
  final wordle; 
  const Input(this.wordle);

  @override
  _InputState createState() => _InputState(wordle);
}


class _InputState extends State<Input> {

  
  final numController = TextEditingController();
  final wordle; 

  @override
  void dispose() {
    numController.dispose();
    super.dispose();
  }

  _InputState(this.wordle);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:  <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 16),
          child: TextField(
            controller: numController,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Enter a number',
            ),
          ),
        ),
      Padding(
          padding: EdgeInsets.symmetric(horizontal: 150, vertical: 25),
          child: RaisedButton(
            onPressed: () => { 
            if((int.parse(numController.text)) > wordle.length || (int.parse(numController.text)) <  0 ){
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      content: Text("There are only ${wordle.length} Days Answers"),
                    );
                    },
            )
            }
            else{
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    content: Text(
                      wordle[(int.parse(numController.text))-1],
                      textAlign: TextAlign.center),
                    );
                  },
              )
            }
            
          },
            child:ConstrainedBox(
              constraints: BoxConstraints(minWidth: 300),
              child:Container(
              child: Text(
                      "ENTER", 
                      style: TextStyle(
                            color: Colors.white, 
                            fontSize: 25
                          )
                    ),
              
              width:300,
              height: 50,
              alignment: Alignment.center
              )),
              color: Color.fromARGB(255, 11, 133, 62), //Enter Button
          ),)],
    );
  }
}
