import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class RapidAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget title;
  final String titleString;
  final Widget avatar;

  RapidAppBar({this.title, this.avatar, this.titleString})
      : assert(title != null || titleString != null);

  Size get preferredSize => Size(double.infinity, 120);

  @override
  Widget build(BuildContext ctx) {
    return Container(
      padding: EdgeInsets.only(top: 30, bottom: 10, left: 20, right: 20),
      height: 120,
      decoration: BoxDecoration(
        color: Theme.of(ctx).appBarTheme.color,
      ),
      child: Row(
        children: [
          this.avatar,
          this.title ??
              Text(this.titleString,
                  style: TextStyle(
                    color: Theme.of(ctx).accentColor,
                    fontSize: 30,
                  )),
        ],
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
      ),
    );
  }
}
