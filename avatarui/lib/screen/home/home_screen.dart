import 'package:avatarui/screen/home/widgets/avatar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hi Ankit 👋🏻",
                        style: TextStyle(
                            color: Colors.grey.shade600, fontSize: 18),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        "Create Your\nAvatar",
                        style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              GridView(
                padding: const EdgeInsets.only(top: 30),
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 20.0,
                  crossAxisSpacing: 20.0,
                ),
                children: const [
                  Avatar(avatar: ["👨🏼", "Human"]),
                  Avatar(avatar: ["🐶", "Animal"]),
                  Avatar(avatar: ["👽", "Alien"]),
                  Avatar(avatar: ["🤖", "Robot"]),
                  Avatar(avatar: ["🎃", "Unicorn"]),
                  Avatar(avatar: ["😀", "Emoji"]),
                ],
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.grid_on_outlined),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.grid_4x4_outlined),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings_applications_outlined),
          label: "Setting",
        )
      ]),
    );
  }
}
