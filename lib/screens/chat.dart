import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class chat extends StatefulWidget {
  const chat({Key? key, required this.id}) : super(key: key);
  final String id;
  @override
  State<chat> createState() => _chatState();
}

class _chatState extends State<chat> {
  final CollectionReference _users =
      FirebaseFirestore.instance.collection('users');

  @override
  Widget build(BuildContext context) {
    return Material(
      child: StreamBuilder<Object>(
          stream: null,
          builder: (context, snapshot) {
            return Scaffold(
              appBar: AppBar(
                leadingWidth: 200.00,
                backgroundColor: Color.fromARGB(200, 3, 168, 99),
                leading: Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.arrow_back)),
                    CircleAvatar(
                      child: Icon(Icons.person),
                    )
                  ],
                ),
                actions: [
                  IconButton(
                    onPressed: null,
                    icon: Icon(
                      Icons.videocam,
                      color: Colors.white,
                    ),
                  ),
                  IconButton(
                    onPressed: null,
                    icon: Icon(Icons.call, color: Colors.white),
                  ),
                  IconButton(
                    onPressed: null,
                    icon: Icon(Icons.more_vert, color: Colors.white),
                  ),
                ],
                /*title: Text(
                  documentSnapshot['name'],
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),*/
              ),
            );
          }),
    );
  }
}
