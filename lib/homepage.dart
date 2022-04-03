import 'package:flutter/material.dart';
import 'package:quiz/result.dart';

import 'quiz.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

    final _questions= const[

       //Question number 1    
      {
        "questionText":"When did C programming come?",
        "answers":[{"Text":"1970","Score":10},{"Text":"1960","Score":0},
        {"Text":"1980","Score":0},{"Text":"1950","Score":0}],
      },

       //Question number 2
       {
        "questionText":"When did c++ come out?",
        "answers":[{"Text":"1981","Score":0},{"Text":"1985","Score":10},
        {"Text":"1993","Score":0},{"Text":"1978","Score":0}],
      },

      //Question number 3
       {
          "questionText":"When did Java programming come?",
        "answers":[{"Text":"1984","Score":0},{"Text":"1989","Score":0},
        {"Text":"1999","Score":0},{"Text":"1995","Score":10}],
      },

      //Question number 4
       {
         "questionText":"When did Javascript come?",
        "answers":[{"Text":"1991","Score":0},{"Text":"1999","Score":0},
        {"Text":"2001","Score":0},{"Text":"1995","Score":10}],
      },
        //Question number 5
       {
        "questionText":"When did Python programming come?",
       "answers":[{"Text":"1991","Score":10},{"Text":"2001","Score":0},
        {"Text":"1999","Score":0},{"Text":"1996","Score":0}],

     },
       ];




  var _questionIndex=0;
  var _totalScore=0;

  void resultQuiz(){
    setState(() {
      _questionIndex=0;
      _totalScore=0;

    });
  }



  void  _answerQuestion(int score){



     _totalScore += score;
   
    setState(() {
      _questionIndex=_questionIndex+1;
    });

    if(_questionIndex < _questions.length){
    }

  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("App Bar"),),
      body:_questionIndex < _questions.length?
      

      Quiz(
      questionIndex: _questionIndex,
       questions:_questions,
       answerQuestion: _answerQuestion,)

      :Result(_totalScore,resultQuiz)
      
      );
  }
}