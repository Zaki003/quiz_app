import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget{
  const AnswerButton({super.key, required this.answerText, required this.onTap});

  final String answerText;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 44, 3, 74),
              foregroundColor: Colors.white,
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40,),
            ),
            onPressed: onTap, 
            child: Text(answerText, textAlign: TextAlign.center,),),
    );
  }

}