import 'package:flutter/material.dart';
import 'package:rada_chat/constants/constants.dart';

class ChatRoomPreview extends StatefulWidget {
  final String groupAvatarUrl;
  final String groupName;
  final TimeOfDay chatTimestamp;

  const ChatRoomPreview(
      {Key key,
        @required this.groupAvatarUrl,
        @required this.groupName,
        @required this.chatTimestamp})
      : super(key: key);

  @override
  _ChatRoomPreviewState createState() =>
      _ChatRoomPreviewState(groupAvatarUrl, groupName, chatTimestamp);
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
