import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton({super.key, required this.answerText, required this.onPressed,});
  final String answerText;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.black,
                foregroundColor: Colors.white, padding: EdgeInsets.symmetric(
          vertical: 15,
          horizontal: 15,),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50)
          )
        ),
        onPressed: onPressed, child: Text(answerText, style: TextStyle(
      fontSize:20,
    ),));
  }
}
