import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetCallback;

  Result(this.resultScore, this.resetCallback);

  String get resultPhrase {
    if (resultScore <= 2) {
      return 'Your are awesome and innocent';
    } else if (resultScore <= 5) {
      return 'Pretty likable!';
    } else {
      return 'RAMPAGE!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 16),
            child: RaisedButton(
              onPressed: resetCallback,
              child: Text('Reset'),
            ),
          )
        ],
      ),
    );
  }
}
