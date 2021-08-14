import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:rada_chat/constants/constants.dart';

import '../../menu_drawer.dart';

class ChatScreen extends StatefulWidget {
  static String routeName = "/chat";

  const ChatScreen({Key key}) : super(key: key);

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
                      text: 'Personal',
                    ),
                    Tab(
                      text: 'Group Chat',
                    ),
                  ],
                ),
                Expanded(
                  child: TabBarView(
                    children: [
                      Center(
                        child: Text('Chat Room'),
                      ),
                      Center(
                        child: Text('Group Chat'),
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
            log("Floating action button pressed");
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text("Starting a new chat..."),
            ));
          },
        ),
      ),
    );
  }
}
