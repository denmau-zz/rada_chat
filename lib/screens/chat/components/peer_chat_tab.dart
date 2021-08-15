import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:rada_chat/constants/constants.dart';
import 'package:rada_chat/models/peer_chat_model.dart';
import 'package:rada_chat/screens/chat/components/peer_chat/peer_chat_screen.dart';

class PeerChatTab extends StatefulWidget {
  const PeerChatTab({Key key}) : super(key: key);

  @override
  _PeerChatTabState createState() => _PeerChatTabState();
}

class _PeerChatTabState extends State<PeerChatTab> {
  List<PeerChat> peerChats = [];

  void fetchChats() {
    // in the production app, chats will be coming from a server via API; but this will do for now
    peerChats.add(PeerChat(
      userAvatarUrl:
          "https://images.unsplash.com/photo-1520998116484-6eeb2f72b5b9?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDV8fHBvcnRyYWl0fGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
      chatSentAt: DateTime.now(),
      senderName: 'Jane Doe',
      message:
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
    ));
    peerChats.add(PeerChat(
      userAvatarUrl:
          "https://static.wikia.nocookie.net/silicon-valley/images/3/33/Richard_Hendricks.jpg/revision/latest?cb=20150526104602",
      chatSentAt: DateTime.now(),
      senderName: 'Richard Hendricks',
      message:
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
    ));
    peerChats.add(PeerChat(
      userAvatarUrl:
          "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cG9ydHJhaXR8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
      chatSentAt: DateTime.now(),
      senderName: 'Miriam Makena',
      message:
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
    ));
    peerChats.add(PeerChat(
      userAvatarUrl:
          "https://images.unsplash.com/photo-1542909168-82c3e7fdca5c?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTV8fHBvcnRyYWl0fGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
      chatSentAt: DateTime.now(),
      senderName: 'Brian Odwuor',
      message:
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
    ));
  }

  @override
  Widget build(BuildContext context) {
    fetchChats();

    return ListView.builder(
        itemCount: peerChats.length,
        itemBuilder: (BuildContext context, int index) {
          log("Building a peer chat preview");
          return InkWell(
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text("Opening chat room..."),
                ),
              );
              // got to peer chat screen
              Navigator.pushNamed(context, PeerChatScreen.routeName);
            },
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 10.0),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundImage:
                        NetworkImage(peerChats[index].userAvatarUrl),
                    radius: 30.0,
                  ),
                  SizedBox(width: 5.0),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Row(
                          // mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              peerChats[index].senderName,
                              style: kBodyText.copyWith(color: kTextColorWhite),
                            ),
                            SizedBox(width: 10.0),
                            Text(
                              DateFormat('kk:mm:a')
                                  .format(peerChats[index].chatSentAt),
                              style: kBodyText.copyWith(
                                  fontSize: 12.0, color: kPurpleAscent),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Text(
                                peerChats[index].message,
                                style: kBodyText,
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                              ),
                            ),
                            // for UI purposes, don't show badge of unread messages on the last chat preview
                            if (index != 3)
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                ),
                                padding: EdgeInsets.all(8.0),
                                child: Text((index + 1).toString()),
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
