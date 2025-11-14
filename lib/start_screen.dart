import 'package:flutter/material.dart';


import 'package:quiz_app/show_text.dart';

class StartScreen extends StatelessWidget{
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;
  

  @override
  Widget build(context){
    return Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset('assets/images/quiz-logo.png',
                  width: 300,
                  height: 300,
                  color: const Color.fromARGB(150, 255, 255, 255),),
                // ),
                // Opacity(
                //   opacity: 0.4,
                //   child: Image.asset('images/quiz-logo.png',
                //   width: 300,
                //   height: 300,),
                // ),
                SizedBox(height: 50,),
                ShowText("Learn Flutter the fun way!"),
                SizedBox(height: 30,),
                OutlinedButton.icon(
                  style: OutlinedButton.styleFrom(
                    shape: LinearBorder(),
                    foregroundColor: Colors.white
                  ),
                  onPressed: startQuiz,
                  icon: Icon(Icons.arrow_right_alt), 
                  label: Text("Start Quiz"),
                ),
              ],
              ),
            );
  }
}