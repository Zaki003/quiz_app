import 'package:flutter/material.dart';

class ShowText extends StatelessWidget{
  const ShowText(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return 
      Text(text,
        style: TextStyle(
          color: Colors.white,
          fontSize: 22,),
        );
  }
}