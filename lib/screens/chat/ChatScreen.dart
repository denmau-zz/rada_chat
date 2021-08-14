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

    return Scaffold(
      key: _scaffoldKey,
      drawer: MenuDrawer(),
      body: SafeArea(
        child: Container(
          color: kAscentGreen,
          child: Column(
            children: [
              Expanded(
                child: Container(
                  color: kSecondaryAppThemeColor,
                  child: menuBarIcons,
                ),
              ),
              Expanded(
                flex: 9,
                child: Container(
                  color: Colors.transparent,
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        // isExtended: true,
        child: Icon(Icons.message_rounded),
        backgroundColor: kSecondaryAppThemeColor,
        onPressed: () {
          log("Floating action button pressed");
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text("Starting a new chat ..."),
          ));
        },
      ),
    );
  }
}
