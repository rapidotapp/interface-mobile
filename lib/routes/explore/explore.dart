import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:feather_icons_flutter/feather_icons_flutter.dart';

import 'package:rapid/widgets/appBar.dart';
import 'package:rapid/widgets/avatar.dart';
import 'package:rapid/widgets/navBar.dart';
import 'package:rapid/widgets/switch.dart';

class ExploreRoute extends StatelessWidget {
  static const routeName = '/explore';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: RapidAppBar(
        titleString: "explore",
        avatar: Avatar(
          backgroundColor: Theme.of(context).appBarTheme.color,
          url: "https://avatars2.githubusercontent.com/u/34525547",
          glow: true,
          active: true,
          sizeFactor: 0.9,
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                child: Text(
                  "let's find some new",
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 25,
                  ),
                ),
                margin: EdgeInsets.symmetric(vertical: 20),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 30),
                child: RapidSwitch(
                  items: ["communities", "users"],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: NavBar(
        selected: 0,
        items: [
          NavBarButton(
            icon: FeatherIcons.users,
            tooltip: "Friends",
          ),
          NavBarButton(
            icon: FeatherIcons.mail,
            tooltip: "Messages",
          ),
          NavBarButton(
            icon: FeatherIcons.bell,
            tooltip: "Notifications",
          ),
          NavBarButton(
            icon: FeatherIcons.globe,
            tooltip: "Explore",
          ),
        ],
        onChange: (index) {
          print(index);
        },
      ),
    );
  }
}
