

import 'package:flutter/material.dart';

import 'homepage.dart';
import 'quiz.dart';
import 'result.dart';




void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

   

  @override
  Widget build(BuildContext context) {

 

    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage()
      
    );
  }
}