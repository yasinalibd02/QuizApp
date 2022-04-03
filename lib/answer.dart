import 'package:flutter/material.dart';

class Answer extends StatelessWidget {

  final VoidCallback selecholder;
  final String answerText;


  Answer(this.selecholder, this.answerText);



  

  @override
  Widget build(BuildContext context) {
  
    return Container(
         width: 400,

         child:RaisedButton(child:Text(answerText,style: TextStyle(color: Colors.white),),
         
         onPressed:selecholder,color: Colors.blue,)
           

    );
  }
}