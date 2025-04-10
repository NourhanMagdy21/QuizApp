import 'package:flutter/material.dart';
import 'package:quiz_app/features/result/widgets/summary_widget.dart';

import '../../data/questions.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(this.selectedAnswers, {super.key});

  final List<String> selectedAnswers;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];
    for (var i = 0; i < selectedAnswers.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'user_answer': selectedAnswers[i],
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            'You answered 3 out of 6 questions correctly!',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 24,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Summary( getSummaryData()),
          // const SizedBox(height: 15,),
          TextButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.restart_alt_outlined, color: Colors.white,),
            label: const Text(
              'Restart Quiz!',
              style:  TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
