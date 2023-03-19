// ignore_for_file: prefer_const_constructor, prefer_const_constructors, prefer_const_literals_to_create_immutables, duplicate_ignore
import 'package:flutter/material.dart';
import 'package:whats_appclone/screens/chats_list.dart';
import 'package:whats_appclone/screens/community.dart';

import 'package:whats_appclone/screens/status_list.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        initialIndex: 1,
        length: 4,
        child: Scaffold(
          // ignore: duplicate_ignore
          appBar: AppBar(
            automaticallyImplyLeading: false,
            title: Text("WhatsApp"),
            backgroundColor: Color.fromARGB(200, 3, 168, 99),
            // ignore: prefer_const_literals_to_create_immutables
            actions: [
              IconButton(
                onPressed: null,
                icon: Icon(
                  Icons.camera_alt_outlined,
                  color: Colors.white,
                ),
              ),
              IconButton(
                onPressed: null,
                icon: Icon(Icons.search, color: Colors.white),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.more_vert, color: Colors.white),
              ),
            ],
            bottom: TabBar(
              indicatorColor: Colors.white,
              indicatorWeight: 3,
              tabs: <Widget>[
                Tab(
                  iconMargin: EdgeInsets.all(20.0),
                  icon: Icon(
                    Icons.groups,
                  ),
                ),
                Tab(
                  text: "CHATS",
                ),
                Tab(
                  text: "STATUS",
                ),
                Tab(
                  text: "CALLS",
                ),
              ],
            ),
          ),
          body: const TabBarView(
            children: <Widget>[
              Center(
                child: community(),
              ),
              Center(
                child: Chatlist(),
              ),
              Center(
                child: Status_LIST(),
              ),
              Center(
                child: Text("calls"),
              ),
            ],
          ),
        ));
  }
}
