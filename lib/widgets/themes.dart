import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
      primarySwatch: Colors.deepPurple,
      fontFamily: GoogleFonts.kanit().fontFamily,
      appBarTheme: AppBarTheme(
        color: Colors.deepPurple,
        elevation: 1.0,
        iconTheme: IconThemeData(color: Colors.white),
      ));

  static ThemeData DarkTheme(BuildContext context) =>
      ThemeData(brightness: Brightness.dark);
}
