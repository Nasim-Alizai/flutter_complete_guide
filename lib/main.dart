import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void answerQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
    print(questionIndex);
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
            Text(questions[questionIndex]),
            ElevatedButton(
              child: const Text("Answer 1"),
              onPressed: answerQuestion,
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
