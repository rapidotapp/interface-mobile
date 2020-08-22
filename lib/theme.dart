import 'package:flutter/material.dart';

class Themes {
  ThemeData get lightMode => ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        primaryColor: Color(0xFFFC8181),
        accentColor: Color(0xFFFC8181),
        scaffoldBackgroundColor: Color(0xFFFFF5F5),
        fontFamily: "Inter",
        appBarTheme: AppBarTheme(
          color: Colors.white,
        ),
        splashColor: Color(0xFFFC8181).withOpacity(0.2),
        highlightColor: Color(0xFFFC8181).withOpacity(0.2),
      );
}
