import 'package:flutter/material.dart';

import 'package:feather_icons_flutter/feather_icons_flutter.dart';

class Avatar extends StatelessWidget {
  final bool active;
  final String url;
  final Color backgroundColor;
  final bool admin;
  final bool glow;
  final double sizeFactor;

  Avatar({
    this.active = false,
    this.url,
    this.backgroundColor,
    this.admin = false,
    this.glow = false,
    this.sizeFactor = 1,
  });

  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            boxShadow: [
              if (this.glow)
                BoxShadow(
                    color: Theme.of(context).primaryColor.withOpacity(0.6),
                    blurRadius: 20 * sizeFactor)
            ],
          ),
          child: CircleAvatar(
            backgroundImage: NetworkImage(this.url),
            radius: 40 * sizeFactor,
          ),
        ),
        Positioned(
          right: 0,
          bottom: 0,
          child: Container(
            width: 23 * sizeFactor,
            height: 23 * sizeFactor,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: this.active ? Color(0xFF00FFAE) : Colors.grey[350],
              border: Border.all(
                width: 4 * sizeFactor,
                color: this.backgroundColor ?? Theme.of(context).scaffoldBackgroundColor
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
                  padding: EdgeInsets.all(5 * sizeFactor),
                  child: Icon(
                    FeatherIcons.shield,
                    color: Colors.white,
                    size: 20 * sizeFactor,
                  ),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              ),
            ),
          ),
      ],
    );
  }
}
