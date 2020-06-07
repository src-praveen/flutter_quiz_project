import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int _totalScore;
  final Function resetQuiz;
  Result(this._totalScore, this.resetQuiz);

  String get resultText {
    String resultPhrase = "Your Result Score $_totalScore ,";
    if (_totalScore > 25) {
      resultPhrase += 'Your are awesome';
    } else if (_totalScore > 10 && _totalScore < 25) {
      resultPhrase += 'Your are good';
    } else {
      resultPhrase += 'Your are ok';
    }
    return resultPhrase;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Center(
          child: Text(
            resultText,
            style: TextStyle(fontSize: 20),
          ),
        ),
        FlatButton(
          onPressed: resetQuiz,
          child: Text(
            "Restart Quiz",
            style: TextStyle(color: Colors.red),
          ),
          shape: StadiumBorder(
            side: BorderSide(color: Colors.red, width: 1),
          ),
        )
      ],
    );
  }
}
