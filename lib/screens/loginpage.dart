import 'package:flutter/material.dart';
import 'package:whats_appclone/screens/profile.dart';

import 'package:whats_appclone/widgets/Homepage.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
        child: SafeArea(
            child: Center(
                child: Column(
      children: [
        const Padding(
          padding: EdgeInsets.fromLTRB(30, 80, 50, 50),
          child: Text(
            'Welcome to WhatsApp_clone',
            style: TextStyle(
                color: Color.fromARGB(197, 53, 148, 109),
                fontWeight: FontWeight.w600,
                fontSize: 23),
          ),
        ),
        CircleAvatar(
          backgroundColor: Colors.white,
          radius: 130,
          child: Image.asset('images/welcome.jpg'),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 30, 20, 30),
          child: RichText(
            textAlign: TextAlign.center,
            text: const TextSpan(children: [
              TextSpan(
                  text: "Read our ",
                  style: TextStyle(
                      color: Color.fromARGB(193, 96, 125, 139), fontSize: 15)),
              TextSpan(
                  text: "privacy Policy.",
                  style: TextStyle(color: Colors.blueAccent, fontSize: 15)),
              TextSpan(
                  text: ' Tap "Agree And Continue" ',
                  style: TextStyle(
                      color: Color.fromARGB(193, 96, 125, 139), fontSize: 15)),
              TextSpan(
                  text: "to accept the",
                  style: TextStyle(
                      color: Color.fromARGB(193, 96, 125, 139), fontSize: 15)),
              TextSpan(
                  text: "Terms of Services",
                  style: TextStyle(color: Colors.blueAccent, fontSize: 15))
            ]),
          ),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Profile_page()));
          },
          style: ElevatedButton.styleFrom(
              side: const BorderSide(
                  width: 2, color: Color.fromARGB(255, 48, 206, 61)),
              backgroundColor: const Color.fromARGB(255, 48, 206, 61),
              padding:
                  const EdgeInsets.symmetric(vertical: 10, horizontal: 20)),
          child: const Text(
            'AGREE AND CONTINUE',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(
            top: 30,
          ),
          child: Text(
            textAlign: TextAlign.center,
            'from',
            style: TextStyle(
                color: Color.fromARGB(193, 96, 125, 139), fontSize: 20),
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            textAlign: TextAlign.center,
            'Gacebook',
            style: TextStyle(
                color: Color.fromARGB(255, 48, 206, 61), fontSize: 20),
          ),
        ),
      ],
    ))));
  }
}
