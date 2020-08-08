import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class NavBar extends StatelessWidget {
  final int selected;
  final List<NavBarButton> items;
  final Function onChange;

  NavBar({this.selected, this.items, this.onChange});

  Widget build(BuildContext ctx) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 10),
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: this.items.asMap().entries.map((e) {
          return NavBarButtonWidget(
            selected: this.selected == e.key,
            icon: e.value.icon,
            onPressed: () {
              this.onChange(e.key);
            },
            tooltip: e.value.tooltip,
          );
        }).toList(),
      ),
    );
  }
}

class NavBarButtonWidget extends StatelessWidget {
  final bool selected;
  final IconData icon;
  final Function onPressed;
  final String tooltip;

  NavBarButtonWidget({
    this.selected = false,
    this.icon,
    this.onPressed,
    this.tooltip = "",
  });

  Widget build(BuildContext ctx) {
    return Tooltip(
      message: this.tooltip,
      child: RawMaterialButton(
        onPressed: this.onPressed,
        elevation: 0.0,
        fillColor: this.selected ? Color(0xFFFC8181) : Color(0xFFFFF5F5),
        child: Icon(
          this.icon,
          size: 30.0,
          color: this.selected ? Color(0xFFFFF5F5) : Color(0xFFFC8181),
        ),
        padding: EdgeInsets.all(15.0),
        shape: CircleBorder(),
        highlightElevation: 0,
      ),
    );
  }
}

class NavBarButton {
  final IconData icon;
  final String tooltip;

  NavBarButton({this.icon, this.tooltip});
}
