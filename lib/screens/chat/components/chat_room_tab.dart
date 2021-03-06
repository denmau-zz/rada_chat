import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:rada_chat/constants/constants.dart';
import 'package:rada_chat/models/chat_room_model.dart';

import 'chat_room/chat_room_screen.dart';

class ChatRoomTab extends StatefulWidget {
  const ChatRoomTab({Key key}) : super(key: key);

  @override
  _ChatRoomTabState createState() => _ChatRoomTabState();
}

class _ChatRoomTabState extends State<ChatRoomTab> {
  List<ChatRoom> chatRooms = [];

  void fetchChats() {
    // in the production app, chats will be coming from a server via API; but this will do for now
    chatRooms.add(ChatRoom(
      chatRoomAvatarUrl:
          "https://images.unsplash.com/photo-1562961295-498db0c7d592?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8c3RvcCUyMGRydWdzfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
      chatRoomName: "Vijana Tuache Mihadarati",
    ));
    chatRooms.add(ChatRoom(
      chatRoomAvatarUrl:
          "https://images.unsplash.com/photo-1522433515676-e82aff21f9d2?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDJ8fGhlYWx0aHklMjByZWxhdGlvbnNoaXB8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
      chatRoomName: "Relationship Corner",
    ));
  }

  @override
  Widget build(BuildContext context) {
    fetchChats();

    return ListView.builder(
        itemCount: chatRooms.length,
        itemBuilder: (BuildContext context, int index) {
          log("Building a chat room preview");
          return InkWell(
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text("Opening Chat Room ..."),
                ),
              );
              // got to chat room screen
              Navigator.pushNamed(context, ChatRoomScreen.routeName);
            },
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 10.0),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundImage:
                        NetworkImage(chatRooms[index].chatRoomAvatarUrl),
                    radius: 30.0,
                  ),
                  SizedBox(width: 5.0),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              chatRooms[index].chatRoomName,
                              style: kBodyText.copyWith(
                                  fontWeight: FontWeight.w100,
                                  color: kTextColorWhite),
                            ),
                            SizedBox(width: 10.0),
                            Text(
                              '8:32 PM',
                              style: kBodyText.copyWith(
                                  fontSize: 12.0, color: kPurpleAscent),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Some message goes here',
                              style: kBodyText,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                              ),
                              padding: EdgeInsets.all(8.0),
                              child: Text((index + 3).toString()),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
