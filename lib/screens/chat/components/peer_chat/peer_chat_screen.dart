import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:rada_chat/constants/constants.dart';

import '../../../../menu_drawer.dart';
import '../chat_widget.dart';

class PeerChatScreen extends StatefulWidget {
  const PeerChatScreen({Key key}) : super(key: key);
  static String routeName = "/peer_chat";

  @override
  _PeerChatScreenState createState() => _PeerChatScreenState();
}

class _PeerChatScreenState extends State<PeerChatScreen> {
  @override
  Widget build(BuildContext context) {
    final _scaffoldKey = GlobalKey<ScaffoldState>();
    log("Entered peer chat screen");

    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints viewportConstraints) {
        return Scaffold(
          backgroundColor: kAscentGreen,
          key: _scaffoldKey,
          appBar: AppBar(
            title: Text(
              'Peer Chat | Jane Doe',
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
    // return Scaffold(
    //   backgroundColor: kAscentGreen,
    //   key: _scaffoldKey,
    //   drawer: MenuDrawer(),
    //   body: SafeArea(
    //     child: Column(
    //       children: [
    //         Container(
    //           child: menuBarIcons,
    //         ),
    //         ListView(
    //           shrinkWrap: true,
    //           children: [
    //             ChatWidget(),
    //             ChatWidget(),
    //             ChatWidget(),
    //             // ChatWidget(),
    //             // ChatWidget(),
    //             // ChatWidget(),
    //           ],
    //         ),
    //         Spacer(),
    //         TextField(
    //           decoration: InputDecoration(
    //               border: OutlineInputBorder(), hintText: 'Type a Message'),
    //         ),
    //       ],
    //     ),
    //   ),
    // );
  }
}
