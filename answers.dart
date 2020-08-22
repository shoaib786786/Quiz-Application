import "package:flutter/material.dart";

class Answers extends StatelessWidget {
  final Function selectHandler;
  final  answerText;
  Answers(this.selectHandler,this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.lightGreen,
        child: Text(answerText),
        onPressed: selectHandler,
      ),
    );
  }
}
