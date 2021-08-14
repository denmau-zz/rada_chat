import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:rada_chat/constants/constants.dart';

import '../../menu_drawer.dart';
import 'components/chat_room/chat_room_preview.dart';
import 'components/peer_chat/peer_chat_preview.dart';

class ChatScreen extends StatefulWidget {
  static String routeName = "/chat";
  final List<PeerChatPreview> peerChatPreviews;
  final List<ChatRoomPreview> chatRoomPreviews;

  ChatScreen.name(this.peerChatPreviews, this.chatRoomPreviews);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  List<PeerChatPreview> peerChatPreviews;
  List<ChatRoomPreview> chatRoomPreviews;



  @override
  Widget build(BuildContext context) {
    final _scaffoldKey = GlobalKey<ScaffoldState>();
    log("Entered chat screen");
    final PageController _controller = PageController(initialPage: 0);

    var menuBarIcons = Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          icon: Icon(
            Icons.menu,
            size: 20.0,
            color: kTextColorWhite,
          ),
          onPressed: () => _scaffoldKey.currentState.openDrawer(),
        ),
        Text(
          'Rada Chat SeKU',
          style: kThemedTextTitleStyle,
        ),
        IconButton(
          icon: Icon(
            Icons.account_circle_rounded,
            size: 20.0,
            color: kTextColorWhite,
          ),
          onPressed: () {},
        ),
      ],
    );

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: kAscentGreen,
        key: _scaffoldKey,
        drawer: MenuDrawer(),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 8.0),
            child: Column(
              children: <Widget>[
                menuBarIcons,
                TabBar(
                  unselectedLabelColor: Color(0xFF333333),
                  labelColor: kOrangeAscent,
                  isScrollable: true,
                  tabs: [
                    Tab(
                      text: 'Peer Chat',
                    ),
                    Tab(
                      text: 'Chat Room',
                    ),
                  ],
                ),
                Expanded(
                  child: TabBarView(
                    children: [
                      Center(
                        child: Text('Peer Chat'),
                      ),
                      Center(
                        child: Text('Chat Room'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.message_rounded),
          backgroundColor: kSecondaryAppThemeColor,
          onPressed: () {
            loadChats();
          },
        ),
      ),
    );
  }

  static void loadChats() {
    peerChatPreviews.add()
    PeerChatPreview(
      userAvatarUrl: "https://images.unsplash.com/photo-1520998116484-6eeb2f72b5b9?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDV8fHBvcnRyYWl0fGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
      chatSentAt: TimeOfDay(hour: 15, minute: 0),
      senderName: 'Jane Doe', // 3:00pm,
    )
  }
}
