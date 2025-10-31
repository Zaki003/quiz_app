import 'package:flutter/material.dart';

import 'package:quiz_app/show_text.dart';

class StartScreen extends StatelessWidget{
  const StartScreen(this.color1, this.color2, {super.key});


  final Color color1;
  final Color color2;

  void start_quiz(){

  }

  @override
  Widget build(context){
    return Container(
          decoration: BoxDecoration(
            gradient: 
            LinearGradient(colors: [
              color1,
              color2,
            ],
            begin: AlignmentGeometry.topLeft,      
            end: AlignmentGeometry.bottomRight,
            ),
          ),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset('images/quiz-logo.png',
                width: 300,
                height: 300,),
                SizedBox(height: 50,),
                ShowText("Learn Flutter the fun way!"),
                SizedBox(height: 30,),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: LinearBorder(),
                  ),
                  onPressed: start_quiz, child: 
                  ShowText("Start Quiz"),
                ),
              ],
              ),
            ),
        );
  }
}