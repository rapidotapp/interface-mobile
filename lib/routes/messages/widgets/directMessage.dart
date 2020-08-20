import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:rapid/widgets/avatar.dart';

class DirectMessage extends StatelessWidget {
  @override
  Widget build(BuildContext ctx) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Row(
        children: [
          Avatar(
            url: "https://avatars2.githubusercontent.com/u/34525547",
            sizeFactor: 0.8,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("cjdenio"),
                  Text("1:23 \u00B7 Hi there!"),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
