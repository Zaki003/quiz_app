import 'package:flutter/material.dart';

class QuestionData extends StatelessWidget{
  const QuestionData(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;


  @override
  Widget build(BuildContext context) {
    

    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: 
            summaryData.map((data) {
              final isCorrectAnswer = data['user_answer'] == data['actual_answer'];
              return Row(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [ 
                  Container(
                    width: 30,
                    height: 30,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: isCorrectAnswer? 
                      Color.fromARGB(255, 150, 198, 241):
                      Color.fromARGB(255, 249, 133, 241),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Text(((data['question_index'] as int) + 1).toString(),
                    style: TextStyle(
                      color: const Color.fromARGB(255, 5, 27, 45),
                      fontWeight: FontWeight.bold,
                    ),),
                    ),
                  SizedBox(width: 20,),
                  Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(data['question'] as String,
                      textAlign: TextAlign.left,
                      style: TextStyle(color: const Color.fromARGB(255, 235, 193, 245),
                      fontSize: 18,
                      ),),
                      SizedBox(height: 5,),
                      Text(data['user_answer'] as String,
                      style: TextStyle(
                        color: const Color.fromARGB(255, 206, 77, 229),
                      ),),
                      Text(data['actual_answer'] as String,
                      style: TextStyle(
                        color: const Color.fromARGB(255, 156, 139, 201)
                      ),),
                    ],
                  ),
                ),
              ]);
            }).toList(),
        ),
      ),
    );
  }
}