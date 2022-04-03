import 'package:flutter/material.dart';

class Result extends StatelessWidget {


 final int resultScore;
 final VoidCallback restartQuiz;


 Result(this.resultScore, this.restartQuiz);


 String get ResultPhrase{
      
      String resultText;

      if(resultScore<=50){
      resultText="your score is 50";

    
      } else if( resultScore <=40){
        resultText="your score is 40";
      }

      else if( resultScore <=30){
        resultText="your score is 30";
      }
      else{

      resultText="you are so bad ";
      
      }
      
      return resultText;

 }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 150),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text(ResultPhrase,style: TextStyle(fontSize: 28,color: Colors.red),)),

          ElevatedButton(
            style: ElevatedButton.styleFrom(primary: Colors.orange),
            
            onPressed:
            restartQuiz, child:Text("Restart Quiz")),
           
        ],
      ),
    );
  }
}