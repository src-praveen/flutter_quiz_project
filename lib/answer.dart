import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String _answer;
  final Function selectHandler;
  Answer(this._answer, this.selectHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        child: Text(
          _answer,
          style: TextStyle(
            color: Colors.red,
          ),
        ),
        color: Colors.white,
        elevation: 5,
        onPressed: selectHandler,
      ),
    );
  }
}
