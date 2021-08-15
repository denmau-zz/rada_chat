import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:rada_chat/constants/constants.dart';
import 'package:rada_chat/screens/chat/components/chat_room_tab.dart';
import 'package:rada_chat/screens/chat/components/peer_chat_tab.dart';

import '../../menu_drawer.dart';

class ChatScreen extends StatefulWidget {
  static String routeName = "/chat";

  ChatScreen({Key key});

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
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
          child: Column(
            children: <Widget>[
              Container(
                child: menuBarIcons,
              ),
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
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: 10.0, vertical: 8.0),
                  child: TabBarView(
                    children: [
                      PeerChatTab(),
                      ChatRoomTab(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.message_rounded),
          backgroundColor: kSecondaryAppThemeColor,
          onPressed: () {
            final doSomething = SnackBar(
              content: Text('Some Action to be performed!'),
              action: SnackBarAction(
                label: 'Undo',
                onPressed: () {
                  // Some code to undo the change.
                },
              ),
            );

            ScaffoldMessenger.of(context).showSnackBar(doSomething);
          },
        ),
      ),
    );
  }
}
