import 'package:flutter/material.dart';

class UiConfig {
  UiConfig._();

  static ThemeData theme() => ThemeData(
        primaryColor: Color(0xFFA8CE4B),
        primaryColorDark: Color(0XFF689F38),
        primaryColorLight: Color(0XFFDDEDC7),
        secondaryHeaderColor: Color(0XFF4CAF50),
        inputDecorationTheme: InputDecorationTheme(
          hintStyle: TextStyle(
            color: Colors.green.shade500,
          ),
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            primary: Color(0XFFA8CE4B),
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            primary: Color(0XFFA8CE4B),
          ),
        ),
        scaffoldBackgroundColor: Colors.grey.shade200,
      );
}
