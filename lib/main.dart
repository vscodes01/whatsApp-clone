import 'package:flutter/material.dart';
import 'package:whats_app_clone/screens/callsScreen.dart';
import 'package:whats_app_clone/screens/chatScreen.dart';
import 'package:whats_app_clone/screens/contactsScreen.dart';
import 'package:whats_app_clone/screens/settingsScreen.dart';
import 'package:whats_app_clone/screens/statusScreen.dart';

import 'constants/stylingAndText.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
      routes: {
        '/settings': (context) => const Settings(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return <Widget>[
                SliverAppBar(
                  backgroundColor: Colors.teal,
                  actions: [
                    const Icon(
                      Icons.camera_alt_outlined,
                      color: Colors.white,
                    ),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(18, 0, 0, 0),
                      child: Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                    ),
                    PopupMenuButton(
                      onSelected: (value) {
                        Navigator.pushNamed(context, value.toString());
                      },
                      color: Colors.white,
                      itemBuilder: (BuildContext context) {
                        return [
                          const PopupMenuItem(
                            value: '/settings',
                            child: Text('Settings'),
                          ),
                        ];
                      },
                    ),
                  ],
                  title: const Row(
                    children: [
                      Text(
                        'WhatsApp',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ],
                  ),
                  pinned: true,
                  floating: true,
                  forceElevated: innerBoxIsScrolled,
                  bottom: TabBar(
                    indicatorColor: Colors.white,
                    dividerColor: Colors.transparent,
                    indicatorSize: TabBarIndicatorSize.tab,
                    unselectedLabelColor: Colors.grey[300],
                    labelColor: Colors.white,
                    tabs: const <Tab>[
                      Tab(text: 'Chats'),
                      Tab(text: 'Status'),
                      Tab(text: 'Calls'),
                    ],
                    controller: _tabController,
                  ),
                ),
              ];
            },
            body: TabBarView(
              controller: _tabController,
              children: const [
                Chats(),
                Status(),
                Calls(),
              ],
            ),
          ),
          Positioned(
            bottom: 20,
            right: 20,
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ContactsScreen(),
                  ),
                );
              },
              child: Container(
                height: 55,
                width: 55,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(27.5),
                  color: Colors.teal,
                ),
                child: const Icon(
                  Icons.message,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
