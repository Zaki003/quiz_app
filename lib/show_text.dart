import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ShowText extends StatelessWidget{
  const ShowText(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return 
      Text(text,
        style: GoogleFonts.lato(color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.bold),
        );
  }
}