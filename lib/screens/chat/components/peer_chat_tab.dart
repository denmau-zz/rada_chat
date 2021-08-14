import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:rada_chat/screens/chat/components/peer_chat/peer_chat_preview.dart';

class PeerChatTab extends StatefulWidget {
  const PeerChatTab({Key key}) : super(key: key);

  @override
  _PeerChatTabState createState() => _PeerChatTabState();
}

class _PeerChatTabState extends State<PeerChatTab> {
  List<PeerChatPreview> peerChatPreviews = [];

  void generateChats() {
    peerChatPreviews.add(PeerChatPreview(
      userAvatarUrl:
          "https://images.unsplash.com/photo-1520998116484-6eeb2f72b5b9?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDV8fHBvcnRyYWl0fGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
      chatSentAt: TimeOfDay(hour: 15, minute: 0),
      senderName: 'Jane Doe', // 3:00pm,
    ));
    peerChatPreviews.add(PeerChatPreview(
      userAvatarUrl:
          "https://images.unsplash.com/photo-1520998116484-6eeb2f72b5b9?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDV8fHBvcnRyYWl0fGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
      chatSentAt: TimeOfDay(hour: 15, minute: 0),
      senderName: 'John Doe', // 3:00pm,
    ));
    peerChatPreviews.add(PeerChatPreview(
      userAvatarUrl:
          "https://images.unsplash.com/photo-1520998116484-6eeb2f72b5b9?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDV8fHBvcnRyYWl0fGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
      chatSentAt: TimeOfDay(hour: 15, minute: 0),
      senderName: 'Jane Doe', // 3:00pm,
    ));
    peerChatPreviews.add(PeerChatPreview(
      userAvatarUrl:
          "https://images.unsplash.com/photo-1520998116484-6eeb2f72b5b9?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDV8fHBvcnRyYWl0fGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
      chatSentAt: TimeOfDay(hour: 15, minute: 0),
      senderName: 'John Doe', // 3:00pm,
    ));
  }

  @override
  Widget build(BuildContext context) {
    generateChats();

    return ListView.builder(
        itemCount: peerChatPreviews.length,
        itemBuilder: (BuildContext context, int index) {
          log("Building a chat preview");
          return peerChatPreviews[index];
        });

  }
}
