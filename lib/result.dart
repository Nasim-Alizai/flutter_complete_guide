import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalscore;
  final VoidCallback resetQuiz;

  String get resultPhares {
    String resultText;
    if (totalscore <= 8) {
      resultText = 'You are awesome and innocent';
    } else if (totalscore <= 12) {
      resultText = 'You are likable...';
    } else if (totalscore <= 16) {
      resultText = 'You are Strange...';
    } else {
      resultText = 'You are so bad...';
    }
    return resultText;
  }

  Result(this.totalscore, this.resetQuiz);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhares,
            style: TextStyle(fontSize: 28),
            textAlign: TextAlign.center,
          ),
          TextButton(
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
            ),
            onPressed: resetQuiz,
            child: Text('Reset Quiz'),
          )
        ],
      ),
    );
  }
}
