import 'package:flutter/material.dart';
import 'package:rada_chat/routes/routes.dart';
import 'package:rada_chat/screens/chat/chat_screen.dart';

void main() {
  runApp(RadaChatApp());
}

class RadaChatApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rada Chat',
      theme: ThemeData.light(),
      debugShowCheckedModeBanner: false,
      initialRoute: ChatScreen.routeName,
      routes: routes,
    );
  }
}
