import 'package:flutter/material.dart';

class Question extends StatelessWidget {

  String questionText;
  Question(this.questionText);


  @override
  Widget build(BuildContext context) {
    return Center(child: Text(questionText,style: TextStyle(fontSize: 20,),));
  }
}