import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DirectMessage extends StatelessWidget {
  final String time;
  final String messageText;
  final bool unread;
  final Widget avatar;
  final String username;
  final Function onTap;
  final Function onLongPress;

  DirectMessage({
    this.time = "",
    this.messageText = "",
    this.unread = false,
    this.avatar,
    this.username,
    this.onTap,
    this.onLongPress,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: this.onTap ?? () {},
      onLongPress: this.onLongPress ?? null,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Row(
          children: [
            this.avatar,
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      this.username,
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontSize: 20,
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(text: this.time + " \u{00B7} "),
                          TextSpan(
                            text: this.messageText,
                            style: TextStyle(
                              fontWeight: this.unread
                                  ? FontWeight.bold
                                  : FontWeight.normal,
                            ),
                          ),
                        ],
                        style: TextStyle(
                          color: this.unread
                              ? Theme.of(context).brightness == Brightness.light
                                  ? Colors.grey[700]
                                  : Colors.grey[400]
                              : Theme.of(context).brightness == Brightness.light
                                  ? Colors.grey[400]
                                  : Colors.grey[700],
                          fontSize: 15,
                        ),
                      ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      softWrap: false,
                    ),
                  ],
                ),
              ),
            ),
            if (this.unread) UnreadDot()
          ],
        ),
      ),
    );
  }
}

class UnreadDot extends StatelessWidget {
  @override
  Widget build(BuildContext ctx) {
    return Container(
      width: 13,
      height: 13,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.blue,
      ),
    );
  }
}
