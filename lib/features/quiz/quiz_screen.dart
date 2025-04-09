import 'package:flutter/material.dart';
import 'package:quiz_app/features/home/ui/home_screen.dart';
import 'package:quiz_app/features/questions/question_screen.dart';


class QuizApp extends StatefulWidget {
  const QuizApp({super.key});

  @override
  State<QuizApp> createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  Widget? activeScreen ;
  @override
  void initState() {
    activeScreen = HomeScreen(switchScreen);
    super.initState();
  }

  void switchScreen(){
    setState(() {
      activeScreen = QuestionScreen();
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
