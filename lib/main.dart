import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/Question.dart';

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
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        child: QuizPage(),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Icon> scoreKeeper = [];

  List<Question> questionBank = [
    Question(
        question: 'You can lead a cow down stairs but not up stairs.',
        answer: false),
    Question(
        question: 'Approximately one quarter of human bones are in the feet',
        answer: true),
    Question(question: 'A slug\'s blood is green.', answer: true)
  ];

  int questionNumber = 0;

  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          flex: 6,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                questionBank[questionNumber].question,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25.0,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: FlatButton(
              textColor: Colors.white,
              color: Colors.green,
              onPressed: () {
                var correctAnswer = questionBank[questionNumber].answer;
                if (correctAnswer == true) {
                  setState(() {
                    scoreKeeper.add(
                      Icon(
                        Icons.check,
                        color: Colors.green,
                      ),
                    );
                    questionNumber++;
                  });
                } else {
                  setState(() {
                    scoreKeeper.add(
                      Icon(
                        Icons.close,
                        color: Colors.red,
                      ),
                    );
                    questionNumber++;
                  });
                }
              },
              child: Text(
                'True',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24.0,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: FlatButton(
              textColor: Colors.white,
              color: Colors.red,
              onPressed: () {
                var correctAnswer = questionBank[questionNumber].answer;
                if (correctAnswer == false) {
                  setState(() {
                    scoreKeeper.add(
                      Icon(
                        Icons.check,
                        color: Colors.green,
                      ),
                    );
                    questionNumber++;
                  });
                } else {
                  setState(() {
                    scoreKeeper.add(
                      Icon(
                        Icons.close,
                        color: Colors.red,
                      ),
                    );
                    questionNumber++;
                  });
                }
              },
              child: Text(
                'False',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24.0,
                ),
              ),
            ),
          ),
        ),
        Row(
          children: scoreKeeper,
        )
      ],
    );
  }
}

/*
question1: 'You can lead a cow down stairs but not up stairs.', false,
question2: 'Approximately one quarter of human bones are in the feet.', true,
question3: 'A slug\'s blood is green.', true,
*/
