
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int scoreResult;
  final Function retakeHandler;
  Result(this.scoreResult,this.retakeHandler);
  String get resultPhrase{
    var resultText = 'You did it!';
    if (scoreResult <= 30){
      resultText ='Fail!';
    }else{
      resultText = 'Pass!';
    }
    return resultText;
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
        Text(resultPhrase,style: TextStyle(fontSize: 36,fontWeight: FontWeight.bold),
        ),
        FlatButton(child: Text('Retake!'),onPressed: retakeHandler,)
        ],
      ),
    );
  }
}