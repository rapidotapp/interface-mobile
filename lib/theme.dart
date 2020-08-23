import 'package:flutter/material.dart';

class Themes {
  // Shared values
  final _visualDensity = VisualDensity.adaptivePlatformDensity;
  final _fontFamily = "Inter";

  ThemeData get lightMode {
    const primaryColor = 0xFFFC8181;
    return ThemeData(
      brightness: Brightness.light,
      visualDensity: _visualDensity,
      primaryColor: Color(primaryColor),
      accentColor: Color(0xFFFC8181),
      scaffoldBackgroundColor: Color(0xFFFFF5F5),
      fontFamily: _fontFamily,
      appBarTheme: AppBarTheme(
        color: Colors.white,
        brightness: Brightness.light,
      ),
      splashColor: Color(primaryColor).withOpacity(0.2),
      highlightColor: Color(primaryColor).withOpacity(0.2),
    );
  }

  ThemeData get darkMode {
    const primaryColor = Color.fromRGBO(127, 155, 244, 1);
    return ThemeData(
      brightness: Brightness.dark,
      visualDensity: _visualDensity,
      primaryColor: primaryColor,
      accentColor: Colors.transparent,
      scaffoldBackgroundColor: Color.fromRGBO(23, 25, 35, 1),
      fontFamily: _fontFamily,
      appBarTheme: AppBarTheme(
        color: Color.fromRGBO(26, 32, 44, 1),
        brightness: Brightness.dark,
      ),
      splashColor: primaryColor.withOpacity(0.2),
      highlightColor: primaryColor.withOpacity(0.2),
    );
  }
}
