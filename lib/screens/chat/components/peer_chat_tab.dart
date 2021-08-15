import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:rada_chat/constants/constants.dart';
import 'package:rada_chat/models/peer_chat.dart';

class PeerChatTab extends StatefulWidget {
  const PeerChatTab({Key key}) : super(key: key);

  @override
  _PeerChatTabState createState() => _PeerChatTabState();
}

class _PeerChatTabState extends State<PeerChatTab> {
  List<PeerChat> peerChats = [];

  void generateChats() {
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
          "https://images.unsplash.com/photo-1520998116484-6eeb2f72b5b9?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDV8fHBvcnRyYWl0fGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
      chatSentAt: DateTime.now(),
      senderName: 'Jane Doe',
      message:
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
    ));
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
          "https://images.unsplash.com/photo-1520998116484-6eeb2f72b5b9?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDV8fHBvcnRyYWl0fGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
      chatSentAt: DateTime.now(),
      senderName: 'Jane Doe',
      message:
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
    ));
  }

  @override
  Widget build(BuildContext context) {
    generateChats();

    return ListView.builder(
        itemCount: peerChats.length,
        itemBuilder: (BuildContext context, int index) {
          log("Building a chat preview");
          return GestureDetector(
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text("Message preview tapped"),
                ),
              );
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
                              style: kBodyText,
                            ),
                            SizedBox(width: 10.0),
                            Text(
                              DateFormat('kk:mm:a')
                                  .format(peerChats[index].chatSentAt),
                              style: kBodyText.copyWith(fontSize: 12.0),
                            ),
                          ],
                        ),
                        Text(
                          peerChats[index].message,
                          style: kBodyText,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
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
