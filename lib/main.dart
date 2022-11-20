import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText': 'what is your favorate color ?',
        'answers': ['Black', 'Red', 'Blue', 'green'],
      },
      {
        'questionText': 'what is your favorate animal ?',
        'answers': ['Dog', 'Fish', 'Bee'],
      },
      {
        'questionText': 'who is your favorate Ostad ?',
        'answers': ['Abdullah', 'Muratza', 'Mohammad'],
      },
    ];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("my first flutter"),
        ),
        body: Column(
          children: <Widget>[
            Question(questions[_questionIndex]['questionText'] as String),
            ...(questions[_questionIndex]['answers'] as List<String>)
                .map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList(),
          ],
        ),
      ),
    );
  }
}
