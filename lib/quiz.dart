import 'package:flutter/material.dart';

import 'question.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {
  
  final List<Map<String,Object>> questions;

  final int questionIndex;
  
  final Function answerQuestion;
  

  Quiz({
    required this.questions ,
    required this.questionIndex , 
    required this.answerQuestion
   
  });


  @override
  Widget build(BuildContext context) {



    return ListView(
        
         padding: EdgeInsets.only(top: 150,left: 20,right: 20),
        children: [
         Question( questions[questionIndex]["questionText"] as String),

    SizedBox(height: 20,),
         ...(questions[questionIndex]["answers"] as List<Map<String, Object>>).map((answer){

           return Answer(()=>answerQuestion(answer["Score"]), answer["Text"] as String);

         }).toList()

    
        ],
      );
  }
}