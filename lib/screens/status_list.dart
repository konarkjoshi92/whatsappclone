import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:whats_appclone/screens/chats_list.dart';

class Status_LIST extends StatefulWidget {
  const Status_LIST({super.key});

  @override
  State<Status_LIST> createState() => _Status_LISTState();
}

class _Status_LISTState extends State<Status_LIST> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 5.0),
            child: FloatingActionButton(
                onPressed: null,
                child: Icon(
                  Icons.edit,
                  color: Color.fromARGB(198, 24, 24, 24),
                ),
                mini: true,
                backgroundColor: Color.fromARGB(199, 215, 219, 218)),
          ),
          FloatingActionButton(
              onPressed: null,
              child: Icon(Icons.camera_alt),
              backgroundColor: Color.fromARGB(200, 3, 168, 99))
        ],
      ),
      body: ListTile(
        leading: CircleAvatar(
          child: Icon(Icons.person),
        ),
        title: Text(
          "Status",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          "last msg",
        ),
      ),
    );
  }
}
