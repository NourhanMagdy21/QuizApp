import 'package:flutter/material.dart';

class Summary extends StatelessWidget {
  const Summary(this.summaryData, {super.key});
  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: 450,
      child: SingleChildScrollView(
        child: Column(
          children: [
            ...summaryData.map((e) => Column(
              children: [
                Row(
                  children: [
                    CircleAvatar(
                        radius: 16,
                        backgroundColor:  e['user_answer'] == e['correct_answer']?Colors.green : Colors.red,
                        child: Text(
                            ((e['question_index'] as int) + 1,).toString())),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            e['question'].toString(),
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            e['user_answer'].toString(),
                            style: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                          Text(
                            e['correct_answer'].toString(),
                            style: const TextStyle(
                                color: Colors.green,
                              fontWeight: FontWeight.bold,
                                fontSize: 20,
                                ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                // const SizedBox(height: 10,),
              ],
            )),
          ],
        ),
      ),
    );
  }
}
