import 'package:flutter/material.dart';
import 'package:rada_chat/constants/constants.dart';

class ChatRoomPreview extends StatefulWidget {
  final String groupAvatarUrl;
  final String groupName;
  final TimeOfDay chatSentAt;

  const ChatRoomPreview(
      {Key key,
        @required this.groupAvatarUrl,
        @required this.groupName,
        @required this.chatSentAt})
      : super(key: key);

  @override
  _ChatRoomPreviewState createState() =>
      _ChatRoomPreviewState(groupAvatarUrl, groupName, chatSentAt);
}

class _ChatRoomPreviewState extends State<ChatRoomPreview> {
  String userAvatarUrl;
  String senderName;
  TimeOfDay chatTimestamp;

  _ChatRoomPreviewState(
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
