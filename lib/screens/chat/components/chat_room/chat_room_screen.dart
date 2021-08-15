import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:rada_chat/constants/constants.dart';

import '../../../../menu_drawer.dart';
import '../chat_widget.dart';

class ChatRoomScreen extends StatefulWidget {
  const ChatRoomScreen({Key key}) : super(key: key);
  static String routeName = "/chat_room";

  @override
  _ChatRoomScreenState createState() => _ChatRoomScreenState();
}

class _ChatRoomScreenState extends State<ChatRoomScreen> {
  @override
  Widget build(BuildContext context) {
    final _scaffoldKey = GlobalKey<ScaffoldState>();
    log("Entered peer chat screen");

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
          'Chat Room | Group Title',
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

    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints viewportConstraints) {
        return Scaffold(
          backgroundColor: kAscentGreen,
          key: _scaffoldKey,
          appBar: AppBar(
            title: Text(
              'Chat Room | Group Name',
              style: kThemedTextTitleStyle,
            ),
            backgroundColor: Colors.transparent,
          ),
          drawer: MenuDrawer(),
          body: SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: viewportConstraints.maxHeight,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  ChatWidget(),
                  ChatWidget(),
                  ChatWidget(),
                  ChatWidget(),
                  ChatWidget(),
                  TextField(
                    decoration: InputDecoration(
                        suffixIcon: Icon(Icons.send, color: Colors.white),
                        border: OutlineInputBorder(),
                        labelStyle:
                        TextStyle(color: Colors.white, fontSize: 24.0),
                        hintText: 'Type a Message'),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
