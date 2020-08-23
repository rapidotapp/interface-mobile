import 'package:flutter/widgets.dart';

class RapidSwitch extends StatefulWidget {
  final List<String> items;
  final int initialSelected;

  RapidSwitch({this.items = const [], this.initialSelected = 0})
      : assert(items.length >= 1);

  RapidSwitchState createState() => RapidSwitchState();
}

class RapidSwitchState extends State<RapidSwitch> {
  Widget build(BuildContext ctx) {
    return Container();
  }
}
