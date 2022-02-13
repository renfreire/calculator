import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:google_fonts/google_fonts.dart';

class Display extends StatelessWidget {
  final String text;
  Display(this.text);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        padding: EdgeInsets.all(15),
        child: Container(
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            border:
                Border.all(width: 7, color: Color.fromARGB(255, 35, 56, 41)),
            borderRadius: BorderRadius.circular(10.0),
            color: Color.fromARGB(255, 107, 143, 114),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: AutoSizeText(
                  text,
                  minFontSize: 20,
                  maxFontSize: 80,
                  maxLines: 1,
                  textAlign: TextAlign.end,
                  style: GoogleFonts.rubik(
                    fontWeight: FontWeight.w300,
                    decoration: TextDecoration.none,
                    fontSize: 80,
                    color: Colors.black,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
