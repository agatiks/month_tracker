import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DesignValues {
  static const double paddingSmall = 8.0;
  static const double paddingBig = 16.0;
  static const EdgeInsets regularPadding = EdgeInsets.all(16.0);
  static BoxShadow regularShadow = BoxShadow(
    color: Colors.grey.withOpacity(0.5),
    blurRadius: 4,
    offset: const Offset(2, 2),
  );

  static const smallFontSize = 16.0;
  static const bodyFontSize = 22.0;
  static const mediumFontSize = 32.0;
  static const bigFontSize = 44.0;

  static TextStyle header2 = GoogleFonts.playfairDisplay(
    fontSize: mediumFontSize,
  );

  static TextStyle header1 = GoogleFonts.playfairDisplay(
    fontSize: bigFontSize,
  );

  static TextStyle body1 = GoogleFonts.playfairDisplay(
    fontSize: smallFontSize,
    fontStyle: FontStyle.italic,
  );

  static TextStyle body2 = GoogleFonts.lato(
    fontSize: bodyFontSize,
  );

  static TextStyle bodyLato24({Color color = Colors.black}) => GoogleFonts.lato(
    fontSize: 24,
    color: color,
  );

  static TextStyle bodyPlayfair24({Color color = Colors.black}) => GoogleFonts.playfairDisplay(
    fontSize: 24,
    color: color,
  );

  static const mainColor = Color(0xff76ff03);
  static const detailColor = Color(0x00f9f9f9);
  static const radius = 15.0;
  static const size = 50.0;
}
