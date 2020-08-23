import 'package:flutter/material.dart';

import 'package:rapid/routes/home/home.dart';
import 'package:rapid/routes/messages/messages.dart';
import 'package:rapid/theme.dart';

void main() => runApp(RapidApp());

class RapidApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rapid',
      theme: Themes().lightMode,
      darkTheme: Themes().darkMode,
      debugShowCheckedModeBanner: false,
      routes: {
        HomeRoute.routeName: (BuildContext ctx) => HomeRoute(),
        MessagesRoute.routeName: (BuildContext ctx) => MessagesRoute(),
      },
    );
  }
}
