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
    ),
    textButtonTheme: textButtonThemeData,

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        shape: const StadiumBorder(),
        elevation: 0,
        padding: const EdgeInsets.all(20),
        primary: primaryLigthColor
      )
    ),

    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: primaryLigthColor,
    ),

    inputDecorationTheme: const InputDecorationTheme(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          bottomRight: Radius.circular(20)
        )
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          bottomRight: Radius.circular(20)
        ),
        borderSide: BorderSide(
          color: primaryLigthColor
        )
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          bottomRight: Radius.circular(20)
        ),
        borderSide: BorderSide(
          color: primaryLigthColor
        )
      ),
    )
    
  );

  static TextButtonThemeData textButtonThemeData = TextButtonThemeData(
    style: TextButton.styleFrom(primary: primaryLigthColor)
  );

  static InputDecorationTheme inputDecorationTheme = const InputDecorationTheme(
    border: OutlineInputBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(20),
        bottomRight: Radius.circular(20)
      )
    )
  );
}