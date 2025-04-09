import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/widgets/answer_button.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  final currentQuestion = questions[0];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            currentQuestion.text,
            style:const TextStyle(fontSize: 24, color: Colors.white),
          ),
         const SizedBox(
            height: 30,
          ),
          ... currentQuestion.answers.map((e){
          return  Container(
              margin: EdgeInsets.all(20),
              child: AnswerButton(answerText: e, onPressed: () {}));
    },),

        ],
      ),
    );
  }
}
