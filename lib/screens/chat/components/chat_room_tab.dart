import 'package:flutter/material.dart';

class ChatRoomTab extends StatefulWidget {
  const ChatRoomTab({Key key}) : super(key: key);

  @override
  _ChatRoomTabState createState() => _ChatRoomTabState();
}

class _ChatRoomTabState extends State<ChatRoomTab> {
  @override
  Widget build(BuildContext context) {
    return Tab(
      text: 'Peer Chat',
    );
  }
}
