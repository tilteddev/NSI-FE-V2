import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppFont {
  static TextStyle bodyText = GoogleFonts.dmSans(
    fontWeight: FontWeight.w400,
    fontSize: 16,
    height: 1.5,
  );

  static TextStyle subBodyText = GoogleFonts.dmSans(
    fontWeight: FontWeight.w400,
    fontSize: 14,
    height: 1.5
  );

  static TextStyle captionText = GoogleFonts.dmSans(
    fontWeight: FontWeight.w400,
    fontSize: 12,
    height: 1.5
  );
}


extension TextStyleExt on TextStyle {
  TextStyle bold() => TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: fontSize,
    fontFamily: fontFamily,
    fontStyle: fontStyle,
    color: color
  );

  TextStyle extraBold() => TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: fontSize,
    fontFamily: fontFamily,
    fontStyle: fontStyle,
    color: color
  );

  TextStyle setColor(Color newFontColor) {
    return TextStyle(
      fontWeight: fontWeight,
      fontSize: fontSize,
      fontFamily: fontFamily,
      fontStyle: fontStyle,
      color: newFontColor
    );
  }

  TextStyle setFontSize(double newFontSize) {
    return TextStyle(
      fontWeight: fontWeight,
      fontSize: newFontSize,
      fontFamily: fontFamily,
      fontStyle: fontStyle,
      color: color
    );
  }

  TextStyle setFontWeight(FontWeight newFontWeight) {
    return TextStyle(
      fontWeight: newFontWeight,
      fontSize: fontSize,
      fontFamily: fontFamily,
      fontStyle: fontStyle,
      color: color
    );
  }
}