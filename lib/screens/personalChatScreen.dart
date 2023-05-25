import 'package:flutter/material.dart';
import 'package:chat_bubbles/chat_bubbles.dart';
import 'package:whats_app_clone/constants/personalChatInfo.dart';

class PersonalChat extends StatelessWidget {
  String? name;

  PersonalChat({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: Text(
          name.toString(),
          style: const TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.teal,
        actions: const [
          Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 15, 0),
            child: Icon(
              Icons.video_call,
              color: Colors.white,
              size: 30,
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
            child: Icon(
              Icons.phone,
              color: Colors.white,
              size: 30,
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
            child: Icon(
              Icons.more_vert,
              color: Colors.white,
              size: 30,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Spacer(),
            Container(
              decoration: const BoxDecoration(
                color: Colors.black45,
                image: DecorationImage(
                  image: AssetImage('assets/images/personalChatBackGround.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.8,
              child: ListView.builder(itemBuilder: (context, index) {
                return BubbleSpecialOne(
                        text: personalChatInfo[index].message.toString(),
                        isSender: personalChatInfo[index].isSender ?? false,
                        tail: personalChatInfo[index].tail ?? false,
                        color: (personalChatInfo[index].isSender ?? false)
                            ? Colors.teal
                            : Colors.black54,
                        textStyle: const TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                        ),
                      );
              }, itemCount: personalChatInfo.length,)
            ),
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: 325,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(40),
                          ),
                        ),
                        prefixIcon: Icon(
                          Icons.emoji_emotions_outlined,
                          color: Colors.grey,
                        ),
                        suffixIcon: Icon(
                          Icons.camera_alt,
                          color: Colors.grey,
                        ),
                        iconColor: Colors.grey,
                        hintText: 'Message',
                        hintStyle: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 60,
                  width: 60,
                  padding: const EdgeInsets.fromLTRB(0, 0, 6, 0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.teal),
                  child: const Icon(Icons.send, color: Colors.white, size: 30,),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
