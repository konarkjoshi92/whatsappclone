// ignore_for_file: camel_case_types

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:whats_appclone/widgets/Homepage.dart';

class Profile_page extends StatefulWidget {
  const Profile_page({super.key});

  @override
  State<Profile_page> createState() => _Profile_pageState();
}

class _Profile_pageState extends State<Profile_page> {
  final CollectionReference _users =
      FirebaseFirestore.instance.collection("users");
  final TextEditingController _namecontroller = TextEditingController();
  final TextEditingController _aboutcontroller = TextEditingController();
  final TextEditingController _numbercontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(200, 3, 168, 99),
        title: const Text("Profile"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.fromLTRB(20, 10, 20, 20),
                child: CircleAvatar(
                  child: Icon(
                    Icons.person,
                    size: 100,
                  ),
                  radius: 100,
                ),
              ),

              Container(
                padding: EdgeInsets.fromLTRB(20, 10, 40, 10),
                child: ListTile(
                    title: TextFormField(
                      controller: _namecontroller,
                      decoration: const InputDecoration(
                        labelText: 'Name',
                        hintText: "Your Name",
                      ),
                    ),
                    leading: Icon(Icons.person),
                    trailing: Icon(Icons.edit)),
              ),

              // ignore: prefer_const_constructors
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 10, 40, 10),
                child: const ListTile(
                  title: Text("About"),
                  subtitle: Text("data"),
                  leading: Icon(Icons.info_outline_rounded),
                  trailing: Icon(Icons.edit),
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(20, 10, 40, 10),
                child: ListTile(
                  title: Text("Number"),
                  subtitle: Text('data'),
                  leading: Icon(Icons.phone),
                  trailing: Icon(Icons.edit),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Homepage()));
                },
                style: ElevatedButton.styleFrom(
                    side: const BorderSide(
                        width: 2, color: Color.fromARGB(255, 102, 187, 109)),
                    backgroundColor: const Color.fromARGB(255, 48, 206, 61),
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 20)),
                child: const Text(
                  'NEXT',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
