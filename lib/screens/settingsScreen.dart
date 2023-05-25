import 'package:flutter/material.dart';
import 'package:whats_app_clone/constants/settingsInfo.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          'Settings',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
        ),
        backgroundColor: Colors.teal,
      ),
      body: ListView(
        children: [
           const Padding(
             padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
             child: ListTile(
              leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/varun-photo.jpg'),
                  radius: 30),
              title: Text(
                'Varun',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
              ),
               subtitle: Text('Carpe Diem', style: TextStyle(color: Colors.grey),),
               trailing: Icon(Icons.qr_code, color: Colors.teal, size: 30,),
          ),
           ),
          const Divider(
            color: Colors.grey,
            height: 1,
            thickness: 0.15,
          ),
          for(int index = 0; index < settingsInfo.length; index++)
            ListTile(
              leading: settingsInfo[index].icon,
              title: Text(settingsInfo[index].title.toString()),
              subtitle: Text(settingsInfo[index].subtitle.toString(), style: const TextStyle(color: Colors.grey),),
            )
        ],
      ),
    );
  }
}
