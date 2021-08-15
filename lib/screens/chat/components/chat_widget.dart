import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:rada_chat/constants/constants.dart';
import 'package:rada_chat/models/peer_chat_model.dart';

class ChatWidget extends StatelessWidget {
  ChatWidget({Key key}) : super(key: key);
  final PeerChat messageModel = PeerChat(
      userAvatarUrl:
          "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cG9ydHJhaXR8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
      message: "This is a random message",
      senderName: "Richard Hendricks",
      chatSentAt: DateTime.now());

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          // leading: Icon(Icons.account_circle_rounded),
          leading: CircleAvatar(
            backgroundImage: NetworkImage(messageModel.userAvatarUrl),
            radius: 30.0,
          ),
          title: Text(
            messageModel.senderName,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Row(
            children: [
              Text(
                messageModel.message,
                style: kBodyText.copyWith(fontSize: 13),
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
              Spacer(),
              Icon(Icons.done_all, color: Colors.blue),
            ],
          ),
          trailing: Text(
            DateFormat('kk:mm:a').format(messageModel.chatSentAt).toString(),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 20, left: 80),
          child: Divider(
            thickness: 1,
          ),
        ),
      ],
    );
  }
}
