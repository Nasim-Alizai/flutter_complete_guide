import 'package:flutter/material.dart';

import './question.dart';

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
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'what is your favorate color ?',
      'what is your favorate animal ?'
    ];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("my first flutter"),
        ),
        body: Column(
          children: <Widget>[
            Question(questions[_questionIndex]),
            ElevatedButton(
              child: const Text("Answer 1"),
              onPressed: _answerQuestion,
            ),
            ElevatedButton(
              child: const Text("Answer 2"),
              onPressed: () => print("answer 2 "),
            ),
            ElevatedButton(
              child: Text("Answer 3"),
              onPressed: () {
                print("answer 3");
              },
            ),
          ],
        ),
      ),
    );
  }
}
