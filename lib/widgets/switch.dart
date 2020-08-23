import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class RapidSwitch extends StatefulWidget {
  final List<String> items;
  final int initialSelected;

  RapidSwitch({this.items = const [], this.initialSelected = 0})
      : assert(items.length >= 1);

  RapidSwitchState createState() => RapidSwitchState();
}

class RapidSwitchState extends State<RapidSwitch> {
  int selected;

  initState() {
    this.selected = this.widget.initialSelected;
    super.initState();
  }

  Widget build(BuildContext ctx) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(ctx).primaryColor,
        borderRadius: BorderRadius.circular(999),
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).primaryColor.withOpacity(0.5),
            blurRadius: 20,
          )
        ],
      ),
      padding: EdgeInsets.all(8),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: this
            .widget
            .items
            .asMap()
            .entries
            .map(
              (e) => RapidSwitchItem(
                e.value,
                selected: e.key == this.selected,
                onTap: () {
                  this.setSelected(e.key);
                },
              ),
            )
            .toList(),
      ),
    );
  }

  setSelected(int selected) {
    setState(() {
      this.selected = selected;
    });
  }
}

class RapidSwitchItem extends StatelessWidget {
  final bool selected;
  final String text;
  final Function onTap;

  RapidSwitchItem(this.text, {this.selected = false, this.onTap});

  @override
  Widget build(BuildContext ctx) {
    return GestureDetector(
      onTap: this.onTap ?? () {},
      child: Container(
        decoration: BoxDecoration(
          color: this.selected ? Colors.white : Colors.transparent,
          borderRadius: BorderRadius.circular(999),
        ),
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: Text(
          this.text,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: this.selected ? Theme.of(ctx).primaryColor : Colors.white,
          ),
        ),
      ),
    );
  }
}
