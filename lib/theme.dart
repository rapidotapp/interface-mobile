import 'package:flutter/material.dart';

class Themes {
  static ThemeData get lightMode => ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        primaryColor: Color(0xFFFC8181),
        accentColor: Color(0xFFFC8181),
        scaffoldBackgroundColor: Color(0xFFFFF5F5),
        fontFamily: "Inter",
        appBarTheme: AppBarTheme(
          color: Colors.white,
        ),
      );
}
