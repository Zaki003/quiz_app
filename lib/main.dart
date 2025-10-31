import 'package:flutter/material.dart';

import 'package:quiz_app/start_screen.dart';

void main(){
  runApp(
    MaterialApp(
      home: Scaffold(
        body: StartScreen(const Color.fromARGB(255, 55, 13, 126),
              const Color.fromARGB(255, 81, 11, 201))
      ),
    ),
  );
}