import 'package:flutter/material.dart';

import 'package:feather_icons_flutter/feather_icons_flutter.dart';

class Avatar extends StatelessWidget {
  final bool active;
  final String url;
  final Color backgroundColor;
  final bool admin;
  Avatar({
    this.active = false,
    this.url,
    this.backgroundColor = const Color(0xFFFFF5F5),
    this.admin = false,
  });

  Widget build(BuildContext ctx) {
    return Stack(
      children: [
        CircleAvatar(
          backgroundImage: NetworkImage(this.url),
          radius: 40,
        ),
        Positioned(
          right: 0,
          bottom: 0,
          child: Container(
            width: 23,
            height: 23,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: this.active ? Color(0xFF00FFAE) : Colors.grey[350],
              border: Border.all(
                width: 4,
                color: this.backgroundColor,
              ),
            ),
          ),
        ),
        if (this.admin)
          Positioned(
            bottom: 0,
            left: 0,
            child: Tooltip(
              message: "Team Rapid",
              child: Material(
                elevation: 5,
                shape: CircleBorder(),
                child: Container(
                  padding: EdgeInsets.all(5),
                  child: Icon(
                    FeatherIcons.shield,
                    color: Colors.white,
                    size: 20,
                  ),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFFFC8181),
                  ),
                ),
              ),
            ),
          ),
      ],
    );
  }
}
