import 'package:flutter/material.dart';
import 'package:rada_chat/screens/chat/chat_screen.dart';
import 'package:rada_chat/screens/chat/components/chat_room/chat_room_screen.dart';
import 'package:rada_chat/screens/chat/components/peer_chat/peer_chat_screen.dart';

Map<String, WidgetBuilder> routes = {
  ChatScreen.routeName: (context) => ChatScreen(),
  PeerChatScreen.routeName: (context) => PeerChatScreen(),
  ChatRoomScreen.routeName: (context) => ChatRoomScreen(),
};
