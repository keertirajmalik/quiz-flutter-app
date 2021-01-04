import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: Quizzler(),
      ),
    ),
  );
}

class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: QuizPage(),
      ),
    );
  }
}

class QuizPage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Center(
          child: Text(
            'Hello world',
            style: TextStyle(color: Colors.white),
          ),
        ),
        RaisedButton(
          color: Colors.red,
          onPressed: () {
            print('True');
          },
          child: null,
        ),
        RaisedButton(
          color: Colors.green,
          onPressed: () {
            print('False');
          },
        ),
      ],
    );
  }
}
