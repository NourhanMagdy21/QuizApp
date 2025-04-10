import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:quiz_app/features/home/home_screen.dart';
import 'package:quiz_app/features/questions/question_screen.dart';
import 'package:quiz_app/features/result/result_screen.dart';

import '../../data/questions.dart';


class QuizApp extends StatefulWidget {
  const QuizApp({super.key});

  @override
  State<QuizApp> createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
   List<String> selectedAnswers=[];
  Widget? activeScreen ;

  void chooseAnswer(String userAnswer){
    selectedAnswers.add(userAnswer);
    if(selectedAnswers.length == questions.length){
      setState(() {
        activeScreen =  ResultScreen(selectedAnswers);
        selectedAnswers = [];
      });
    }
    log(selectedAnswers.toString());
  }

  @override
  void initState() {
    activeScreen = HomeScreen(switchScreen);
    super.initState();
  }

  void switchScreen(){
    setState(() {
      activeScreen = QuestionScreen(chooseAnswer);
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Colors.deepPurpleAccent,
                Colors.purpleAccent,
              ]),
            ),
            child: activeScreen
        ),
      ),
    );
  }
}
