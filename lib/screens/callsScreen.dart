import 'dart:math';

import 'package:flutter/material.dart';
import 'package:whats_app_clone/constants/callsInfo.dart';

class Calls extends StatelessWidget {
  const Calls({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ListTile(
            leading: Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                color: Colors.teal,
                borderRadius: BorderRadius.circular(32),
              ),
              child: Transform.rotate(
                angle: -45 * pi / 180,
                child: const Icon(
                  Icons.link,
                  color: Colors.white,
                  size: 30,
                ),
              ),
            ),
            title: const Text(
              'Create call link',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            subtitle: const Text(
              'Share a link for your WhatsApp call',
              style: TextStyle(color: Colors.grey),
            ),
          ),

          //
          const Padding(
            padding: EdgeInsets.fromLTRB(18, 10, 0, 0),
            child: Row(
              children: [
                Text('Recent'),
              ],
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            primary: false,
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
            itemCount: callsInfo.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: CircleAvatar(
                  radius: 30,
                  backgroundImage:
                      AssetImage(callsInfo[index].profilePicture.toString()),
                ),
                title: Text(
                  callsInfo[index].name.toString(),
                  style: const TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                subtitle: Row(
                  children: [
                    (callsInfo[index].received ?? true)
                        ? Transform.rotate(
                            angle: 45 * pi / 180,
                            child: Icon(
                              Icons.arrow_downward,
                              color: (callsInfo[index].success ?? true)
                                  ? Colors.green
                                  : Colors.red,
                            ),
                          )
                        : Transform.rotate(
                            angle: 45 * pi / 180,
                            child: Icon(
                              Icons.arrow_upward,
                              color: (callsInfo[index].success ?? true)
                                  ? Colors.green
                                  : Colors.red,
                            ),
                          ),
                    Text(
                      '${callsInfo[index].day} ${callsInfo[index].time}',
                      style: const TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
                trailing: const Icon(
                  Icons.call,
                  color: Colors.teal,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}