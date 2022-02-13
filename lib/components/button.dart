import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Button extends StatelessWidget {
  final String? text;
  final bool big;
  final Color color;
  final void Function(String) cb;

  static const DARK = Color.fromARGB(255, 73, 72, 72);
  static const DEFAULT = Color.fromRGBO(112, 112, 112, 1);
  static const OPERATION = Color.fromARGB(255, 85, 187, 25);

  Button({
    required this.text,
    this.big = false,
    this.color = DEFAULT,
    required this.cb,
  });

  Button.big({
    required this.text,
    this.big = true,
    this.color = DEFAULT,
    required this.cb,
  });

  Button.operation({
    required this.text,
    this.big = false,
    this.color = OPERATION,
    required this.cb,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: big ? 2 : 1,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: color,
          shape: new RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(8))),
          elevation: 15,
        ),
        child: Text(
          text ?? '',
          style: GoogleFonts.rubik(
            color: Colors.white,
            fontSize: 32,
            fontWeight: FontWeight.w400,
          ),
        ),
        onPressed: () => cb(text!),
      ),
    );
  }
}
