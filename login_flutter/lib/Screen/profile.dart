import 'package:flutter/material.dart';
import "package:firebase_auth/firebase_auth.dart";

void main() {
  runApp(const Profile());
}

class Profile extends StatelessWidget {
  final User? user;
  const Profile({super.key, @required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Welocome"),
      ),
      body: Center(child: Text("Welcome To App ${user?.email}")),
    );
  }
}
