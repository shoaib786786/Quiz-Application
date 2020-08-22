import "package:flutter/material.dart";

class Questions extends StatelessWidget {
  final  questionsText;
  Questions(this.questionsText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(40),
      child: Text(
        questionsText,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
