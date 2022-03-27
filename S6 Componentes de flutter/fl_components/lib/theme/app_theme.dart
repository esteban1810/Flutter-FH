import 'package:flutter/material.dart';

class AppTheme{
  static const Color primaryDarkColor = Colors.blueGrey;
  static const Color primaryLigthColor = Colors.lightGreen;

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    primaryColor: primaryDarkColor,
    appBarTheme: const AppBarTheme(
      backgroundColor: primaryDarkColor,
      elevation: 0
    )
  );

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    primaryColor: primaryLigthColor,
    appBarTheme: const AppBarTheme(
      backgroundColor: primaryLigthColor,
      elevation: 0
    )
  );
}