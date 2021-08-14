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
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          ListView(
            shrinkWrap: true,
            children: <Widget>[
              Text(
                'This is the Menu drawer',
                style: kBodyText,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
