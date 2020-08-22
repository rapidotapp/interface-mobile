import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:feather_icons_flutter/feather_icons_flutter.dart';

import 'package:rapid/routes/messages/widgets/directMessage.dart';
import 'package:rapid/widgets/appBar.dart';
import 'package:rapid/widgets/avatar.dart';
import 'package:rapid/widgets/navBar.dart';

class MessagesRoute extends StatelessWidget {
  static const routeName = '/messages';
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
      body: ListView(
        children: [
          DirectMessage(
            time: "12:45",
            username: "jellyfish",
            avatar: Avatar(
              url:
                  "https://images.unsplash.com/photo-1559291001-693fb9166cba?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
              active: true,
            ),
            messageText: "Hello there!",
            unread: true,
            onTap: () {
              print("I was tapped!");
            },
          ),
          DirectMessage(
            time: "12:45",
            username: "seahorse",
            avatar: Avatar(
              url:
                  "https://images.unsplash.com/photo-1523585895729-a4bb980d5c14?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
              active: true,
              admin: true,
            ),
            messageText:
                "Neigh I am a sea horse here with a nice long message to demonstrate text overflow handling",
            unread: false,
            onTap: () {
              print("I was tapped!");
            },
          ),
        ],
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
