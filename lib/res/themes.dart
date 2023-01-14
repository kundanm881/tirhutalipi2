import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  //Light Theme
  static light() => ThemeData(
        brightness: Brightness.light,
        textTheme: GoogleFonts.notoSansTirhutaTextTheme(),
      );
  //Dark Theme
  static dark() => ThemeData(
        brightness: Brightness.dark,
      );
}
