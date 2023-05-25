import 'package:flutter/material.dart';
import 'package:whats_app_clone/constants/statusInfo.dart';

class Status extends StatelessWidget {
  const Status({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        // padding: const EdgeInsets.all(0),
        children: [
          ListTile(
            leading: Stack(
              children: [
                const CircleAvatar(
                  radius: 32,
                  child: CircleAvatar(
                    backgroundImage:
                        AssetImage('assets/images/varun-photo.jpg'),
                    radius: 30,
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                      color: Colors.teal,
                      borderRadius: BorderRadius.circular(12.5),
                    ),
                    child: const Icon(
                      Icons.add,
                      size: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            title: const Text(
              'My Status',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            subtitle: const Text(
              'Tap to add status update',
              style: TextStyle(color: Colors.grey),
            ),
          ),
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  'Recent Updates',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.bold),
                ),
              ),
              Spacer(),
            ],
          ),

          ListView.builder(
            padding: const EdgeInsets.only(top: 5),
            primary: false,
            shrinkWrap: true,
            itemCount: statusInfo.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.teal,
                  child: CircleAvatar(
                    radius: 30,
                    backgroundImage:
                        AssetImage(statusInfo[index].profilePicture.toString()),
                  ),
                ),
                title: Text(
                  statusInfo[index].name.toString(),
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  '${statusInfo[index].day.toString()} ${statusInfo[index].time.toString()}',
                  style: const TextStyle(color: Colors.grey),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
