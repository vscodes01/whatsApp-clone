import 'package:flutter/material.dart';
import 'package:whats_app_clone/constants/contactsInfo.dart';

import '../constants/stylingAndText.dart';

class ContactsScreen extends StatelessWidget {
  const ContactsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.teal,
        title: const Text(
          'Select contacts',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
            child: Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
            child: Icon(
              Icons.more_vert,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(0),
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
            child: ListTile(
              leading: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: Colors.teal,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: const Icon(
                  Icons.people_alt,
                  color: Colors.white,
                  size: 25,
                ),
              ),
              title: const Text(
                'New Group',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 8),
            child: ListTile(
              leading: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: Colors.teal,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: const Icon(
                  Icons.person_add,
                  color: Colors.white,
                  size: 25,
                ),
              ),
              title: const Text(
                'New Contact',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              trailing: const Icon(Icons.qr_code, color: Colors.grey,),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 8),
            child: ListTile(
              leading: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: Colors.teal,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: const Icon(
                  Icons.groups,
                  color: Colors.white,
                  size: 25,
                ),
              ),
              title: const Text(
                'New Community',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(18, 10, 0, 8),
            child: Text(
              'Contacts on WhatsApp',
              style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
            ),
          ),
          for (int index = 0; index < contactsInfo.length; index++)
            ListTile(
              leading: CircleAvatar(
                backgroundImage:
                    AssetImage(contactsInfo[index].profilePicture.toString()),
                radius: 25,
              ),
              title: Text(
                contactsInfo[index].name.toString(),
                style: const TextStyle(
                    color: Colors.black, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                contactsInfo[index].quote.toString(),
                style: const TextStyle(color: Colors.grey),
              ),
            ),
        ],
      ),
    );
  }
}
