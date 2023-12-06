// ignore_for_file: camel_case_types, must_be_immutable

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class text400normaltitles extends StatelessWidget {
  String data;
  double fontsize;
  Color? textColor;
  text400normaltitles(
      {super.key, required this.data, required this.fontsize, this.textColor});

  @override
  Widget build(BuildContext context) {
    return Text(data,
        textAlign: TextAlign.center,
        style: GoogleFonts.arefRuqaa(
          fontWeight: FontWeight.w400,
          fontSize: fontsize,
          color: textColor ?? Colors.white,
        ));
  }
}
