import 'package:flutter/material.dart';
import '../home/ui/home_screen.dart';

class QuizApp extends StatelessWidget {
  const QuizApp({super.key});

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
            child: HomeScreen()
        ),
      ),
    );
  }
}
