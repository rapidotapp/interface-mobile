import 'package:flutter/material.dart';

import 'package:feather_icons_flutter/feather_icons_flutter.dart';

import 'package:rapid/widgets/appBar.dart';
import 'package:rapid/widgets/avatar.dart';
import 'package:rapid/widgets/navBar.dart';

class HomeRoute extends StatelessWidget {
  static const routeName = '/';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: RapidAppBar(
        titleString: "messages",
        avatar: Avatar(
          backgroundColor: Theme.of(context).appBarTheme.color,
          url: "https://avatars2.githubusercontent.com/u/34525547",
          glow: true,
          active: true,
          sizeFactor: 0.9,
        ),
      ),
      body: Center(
        child: Text(
          'Hello World!',
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
