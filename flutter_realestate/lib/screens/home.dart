import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_realestate/models/item_model.dart';
import 'package:flutter_realestate/widgets/search_field.dart';
import 'package:flutter_realestate/widgets/select_category.dart';
import 'package:flutter_realestate/widgets/suggestion_list.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        toolbarHeight: 88.0,
        title: Row(
          children: const [
            Icon(
              Icons.location_on_outlined,
              color: Colors.black,
            ),
            Text(
              "Earth, Milky-Way",
              style: TextStyle(color: Colors.black),
            )
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications_outlined,
              color: Colors.grey.shade600,
            ),
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const SearchField(),
              const SelectCategory(),
              const SizedBox(
                height: 20.0,
              ),
              SuggestionList(
                title: "Recomandation for you",
                items: Item.dummyData,
              ),
              SuggestionList(
                title: "Near by you",
                items: Item.dummyData,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.blueAccent,
          unselectedItemColor: Colors.grey.shade600,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  CupertinoIcons.home,
                  size: 30.0,
                ),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(
                  CupertinoIcons.search,
                  size: 30.0,
                ),
                label: "Search"),
            BottomNavigationBarItem(
                icon: Icon(
                  CupertinoIcons.heart,
                  size: 30.0,
                ),
                label: "Favorites"),
            BottomNavigationBarItem(
                icon: Icon(
                  CupertinoIcons.person,
                  size: 30.0,
                ),
                label: "Person"),
          ]),
    );
  }
}
