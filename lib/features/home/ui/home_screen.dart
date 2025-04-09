import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child:Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset('assets/images/quiz-logo.png', height: 300,),
          SizedBox(
            height: 60,
          ),
          Text('Learn Flutter!',style: TextStyle(
              fontSize: 24,
              color: Colors.white
          ),),
          SizedBox(
            height: 50,
          ),
          OutlinedButton(
              onPressed: (){}, child: Text('Start Quiz', style: TextStyle(
              fontSize: 24,
              color: Colors.white
          ),))

        ],
      ) ,
    );
  }
}
