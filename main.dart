import 'package:flutter/material.dart';
import 'package:flutter_Quiz_Application/quiz.dart';
import 'package:flutter_Quiz_Application/result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  
  final questions = const [
    {
      "questionText": "Which is the busiest airport in the world?",
      "answers": [
        {'text':'Beijing Intl Airport', 'score' : 0},
        {'text':'Atlanta Intl Airport','score' : 10},
        {'text':'London Heathrow Airport','score': 0},
        {'text': 'Dubai Intl Airport', 'score' : 0},
        ],
    },    
    {
      "questionText": "Which country is the first to win football world cup?",
      "answers": [
        {'text':'Spain', 'score': 0},
        {'text':'France','score': 0},
        {'text':'Uruguay','score': 10},
        {'text': 'Germany', 'score': 0},
        ],
    },
    {
      "questionText": "WHICH IS THE NAME OF A DRONESHIP THAT SPACEX ROCKETS LAND ON?",
      "answers": [
        {'text':'Puff the Magic Dragon', 'score': 0},
        {'text':'X Æ A-12','score': 0},
        {'text':' Of Course I Still Love You','score': 10},
        {'text': ' Millennium Falcon', 'score': 0},
        ],
    },
    {
      "questionText": "Who was the last Governor-General of East India Company?",
      "answers": [
        {'text':'Lord Ellenborough', 'score': 0},
        {'text': 'Lord Elgin-I','score': 0},
        {'text': 'Lord Dalhousie','score': 0},
        {'text': 'Lord Canning', 'score': 10},
        ],
    },
    {
      "questionText": "Who had conceived the idea of the first ever Graphical User Interface?",
      "answers": [
        {'text': 'Steve Jobs', 'score': 0},
        {'text': 'Douglas Engelbart','score': 0},
        {'text': 'Alan Kay','score': 10},
        {'text': 'Bill Gates', 'score': 0},
        ],
    },
  ];
  var questionIndex = 0;
  var _totalScore = 0;
  void retake(){
    setState(() {
     questionIndex = 0;
    _totalScore = 0;
    });
    
  }

  void answerss(int score) {
    _totalScore += score;
    setState(() {
      questionIndex = questionIndex + 1;
    });

    print(questionIndex);
    if (questionIndex < questions.length) {
      print('We have more questions for you!');
    } else {
      print("No more questions!");
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz Application'),
        ),
        body: questionIndex < questions.length
            ? Quiz(
                answerss: answerss,
                questionIndex: questionIndex,
                questions: questions,
              )
            : Result(_totalScore,retake),
      ),
    );
  }
}
