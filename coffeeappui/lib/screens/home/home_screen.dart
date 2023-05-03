import 'package:coffeeappui/screens/home/coffee_tile.dart';
import 'package:coffeeappui/screens/home/coffee_type.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: const Icon(Icons.menu),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: Icon(Icons.person),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border_outlined),
              label: "Favorite",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications_outlined),
              label: "Notifications",
            ),
          ],
        ),
        body: Column(
          children: [
            // Find the best coffee for you
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 25.0,
              ),
              child: Text(
                "Find the best coffee for you",
                style: GoogleFonts.bebasNeue(
                  fontSize: 56,
                ),
              ),
            ),

            const SizedBox(height: 25),

            // Search Bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.search_outlined),
                  hintText: "Find our coffee..",
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade600),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade600),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 25),

            // horizontal listView of Coffee types
            SizedBox(
              height: 50,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  CoffeeType(
                    coffeeType: "Cappucino",
                    isSelected: true,
                  ),
                  CoffeeType(
                    coffeeType: "Latte",
                    isSelected: false,
                  ),
                  CoffeeType(
                    coffeeType: "Black",
                    isSelected: false,
                  ),
                  CoffeeType(
                    coffeeType: "Tea",
                    isSelected: false,
                  ),
                  CoffeeType(
                    coffeeType: "CoffeeTea",
                    isSelected: false,
                  ),
                ],
              ),
            ),
            // horizontal listView of Coffee tiles
            Expanded(
                child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                CoffeeTile(image: "assets/images/latte.jpg"),
                CoffeeTile(image: "assets/images/cappucino.jpg"),
                CoffeeTile(image: "assets/images/milk.jpg"),
              ],
            ))
          ],
        ));
  }
}
