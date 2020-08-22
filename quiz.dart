import 'package:flutter/material.dart';
import 'package:flutter_Quiz_Application/questions.dart';
import 'package:flutter_Quiz_Application/answers.dart';


class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerss;
  Quiz({
    @required this.questions, 
    @required this.answerss, 
    @required this.questionIndex}
    );
  @override
  Widget build(BuildContext context) {
    return Column(
                children: [
                  Questions(
                    questions[questionIndex]['questionText'],
                  ),
                  ...(questions[questionIndex]["answers"] as List<Map<String, Object>>)
                      .map((answer) {
                    return Answers(() => answerss(answer['score']), answer['text']);
                  }).toList()
                ],
              );
  }
}