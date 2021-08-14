import 'dart:developer';

import 'package:flutter/material.dart';

import 'chat_room/chat_room_preview.dart';

class ChatRoomTab extends StatefulWidget {
  const ChatRoomTab({Key key}) : super(key: key);

  @override
  _ChatRoomTabState createState() => _ChatRoomTabState();
}

class _ChatRoomTabState extends State<ChatRoomTab> {
  List<ChatRoomPreview> chatRoomPreviews = [];

  void generateChats() {
    chatRoomPreviews.add(ChatRoomPreview(
      groupAvatarUrl:
          "https://images.unsplash.com/photo-1520998116484-6eeb2f72b5b9?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDV8fHBvcnRyYWl0fGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
      chatSentAt: TimeOfDay(hour: 15, minute: 0),
      groupName: 'Lorem Ipsum', // 3:00pm,
    ));
    chatRoomPreviews.add(ChatRoomPreview(
      groupAvatarUrl:
          "https://images.unsplash.com/photo-1520998116484-6eeb2f72b5b9?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDV8fHBvcnRyYWl0fGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
      chatSentAt: TimeOfDay(hour: 15, minute: 0),
      groupName: 'Ipsum Lorem', // 3:00pm,
    ));
  }

  @override
  Widget build(BuildContext context) {
    generateChats();

    return ListView.builder(
        itemCount: chatRoomPreviews.length,
        itemBuilder: (BuildContext context, int index) {
          log("Building a chat preview");
          return chatRoomPreviews[index];
        });
  }
}
