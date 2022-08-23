import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static TextStyle getTextStyle(TextStyle? textStyle,
      {FontWeight fontWeight = FontWeight.w500,
        double letterSpacing = 0.15,
        Color? color,
        double wordSpacing = 0,
        double? fontSize}) {
    double? finalFontSize = fontSize ?? textStyle!.fontSize;


    return GoogleFonts.ibmPlexSans(
        fontSize: finalFontSize,
        fontWeight: fontWeight,
        letterSpacing: letterSpacing,
        color: color,
        wordSpacing: wordSpacing);
  }


}