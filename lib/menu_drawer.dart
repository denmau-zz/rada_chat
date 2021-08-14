import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:rada_chat/constants/constants.dart';

class MenuDrawer extends StatefulWidget {
  const MenuDrawer({
    Key key,
  }) : super(key: key);

  @override
  _MenuDrawerState createState() => _MenuDrawerState();
}

class _MenuDrawerState extends State<MenuDrawer> {
  @override
  Widget build(BuildContext context) {
    log("opened Menu Drawer");
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            color: kSecondaryAppThemeColor,
            child: ListView(
              shrinkWrap: true,
              children: <Widget>[
                Center(
                  child: Text(
                    'This is the Menu drawer',
                    style: kBodyText,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
