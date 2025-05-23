import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen( this.switchScreen, {super.key});
  final void Function() switchScreen;

  @override
  Widget build(BuildContext context) {
    return Center(
      child:Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset('assets/images/quiz-logo.png', height: 300,),
         const SizedBox(
            height: 60,
          ),
          const Text('Learn Flutter!',style: TextStyle(
              fontSize: 24,
              color: Colors.white
          ),),
          const SizedBox(
            height: 50,
          ),
          OutlinedButton(
              onPressed: switchScreen, child: const Text('Start Quiz', style: TextStyle(
              fontSize: 24,
              color: Colors.white
          ),))

        ],
      ) ,
    );
  }
}
