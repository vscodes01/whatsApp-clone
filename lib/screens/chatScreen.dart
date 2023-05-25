import 'package:flutter/material.dart';
import 'package:whats_app_clone/screens/personalChatScreen.dart';

import '../constants/chatInfo.dart';
import '../constants/stylingAndText.dart';

class Chats extends StatelessWidget {
  const Chats({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
      physics: const AlwaysScrollableScrollPhysics(),
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index) {
        return ListTile(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => PersonalChat(
                  name: chatInfo[index].name,
                ),
              ),
            );
          },
          leading: CircleAvatar(
            backgroundImage:
                AssetImage(chatInfo[index].profilePicture.toString()),
            radius: 30,
          ),
          title: Text(
            chatInfo[index].name.toString(),
            style: const TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold),
          ),
          subtitle: Text(
            chatInfo[index].recentMessage.toString(),
            style: const TextStyle(color: Colors.grey),
          ),
          trailing: Text(
            chatInfo[index].time.toString(),
            style: const TextStyle(color: Colors.grey),
          ),
        );
      },
      itemCount: chatInfo.length,
    );
  }
}
