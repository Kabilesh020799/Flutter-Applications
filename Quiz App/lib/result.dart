import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  final Function reset;

  Result(this.score, this.reset);
  String get ResultPhrase {
    String resultText;
    if (score <= 12) {
      resultText = 'You are bad.......';
    } else if (score <= 16) {
      resultText = 'You are strange';
    } else if (score <= 20) {
      resultText = 'Pretty likeable';
    } else {
      resultText = 'You are awesome and innocent';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(children: [
      Text(
        ResultPhrase,
        style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
      FlatButton(
        onPressed: reset,
        child: Text(
          'Restart Quiz!',
        ),
        textColor: Colors.blue,
      )
    ]));
  }
}
