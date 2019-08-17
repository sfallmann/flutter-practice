import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  final Function restartCallback;

  String get resultPhrase {
    return 'All done!  Score: $score';
  }

  Result(this.score, this.restartCallback);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(resultPhrase, style: TextStyle(height: 10.0, fontSize: 20, fontWeight: FontWeight.bold),),
        RaisedButton(child: Text('Play again'),  onPressed: restartCallback)
      ]),
    );
  }
}
