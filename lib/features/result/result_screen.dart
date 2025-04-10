import 'package:flutter/material.dart';
import 'package:quiz_app/features/result/widgets/summary_widget.dart';

import '../../data/questions.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen( this.restart ,this.selectedAnswers, {super.key});

  final List<String> selectedAnswers;
  final void Function() restart;

  List<Map<String, Object>> get SummaryData {
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
    int numOfCorrectAnswers = SummaryData
        .where((element) => element['user_answer'] == element['correct_answer'])
        .length;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: 30,),
          Text(
            'You answered $numOfCorrectAnswers out of ${questions.length} questions correctly!',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 24,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Summary(SummaryData),
          const SizedBox(height: 20,),
          TextButton.icon(
            onPressed: restart,
            icon: const Icon(
              Icons.restart_alt_outlined,
              color: Colors.white,
            ),
            label: const Text(
              'Restart Quiz!',
              style: TextStyle(
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
