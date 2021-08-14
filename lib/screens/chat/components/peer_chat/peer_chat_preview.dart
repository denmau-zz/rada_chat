import 'package:flutter/material.dart';
import 'package:rada_chat/constants/constants.dart';

class PeerChatPreview extends StatefulWidget {
  final String userAvatarUrl;
  final String senderName;
  final TimeOfDay chatSentAt;

  const PeerChatPreview(
      {Key key,
      @required this.userAvatarUrl,
      @required this.senderName,
      @required this.chatSentAt})
      : super(key: key);

  @override
  _PeerChatPreviewState createState() =>
      _PeerChatPreviewState(userAvatarUrl, senderName, chatSentAt);
}

class _PeerChatPreviewState extends State<PeerChatPreview> {
  String userAvatarUrl;
  String senderName;
  TimeOfDay chatTimestamp;

  _PeerChatPreviewState(
      this.userAvatarUrl, this.senderName, this.chatTimestamp);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(userAvatarUrl),
            radius: 40.0,
          ),
          Column(
            children: [
              Text(
                senderName,
                style: kBodyText,
              ),
            ],
          ),
          Text(
            chatTimestamp.toString(),
            style: kBodyText,
          ),
        ],
      ),
    );
  }
}
