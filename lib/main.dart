import 'package:flutter/material.dart';

import 'package:rapid/routes/home/home.dart';
import 'package:rapid/theme.dart';

void main() => runApp(RapidApp());

class RapidApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rapid',
      theme: Themes().lightMode,
      debugShowCheckedModeBanner: false,
      routes: {
        HomeRoute.routeName: (BuildContext ctx) => HomeRoute(),
      },
    );
  }
}
