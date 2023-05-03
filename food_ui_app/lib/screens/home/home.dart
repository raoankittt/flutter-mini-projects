import 'package:flutter/material.dart';
import 'package:food_ui_app/constants/colors.dart';
import 'package:food_ui_app/models/restaurant.dart';
import 'package:food_ui_app/widgets/custom_app_dar.dart';
import 'package:food_ui_app/widgets/food_list.dart';
import 'package:food_ui_app/widgets/restaurant_info.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../widgets/food_list_view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var selected = 0;
  final pageController = PageController();
  final restaurant = Restaurant.generateRestaurantList();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackground,
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAppBar(
              leftIcon: Icons.arrow_back_ios_outlined,
              rightIcon: Icons.search_outlined,
              leftCallback: () {},
            ),
            RestaurantInfo(),
            FoodList(
              selected: selected,
              callback: (int index) {
                setState(() {
                  selected = index;
                });
                pageController.jumpToPage(index);
              },
              restaurant: restaurant,
            ),
            Expanded(
              child: FoodListView(
                selected: selected,
                callback: (int index) {
                  setState(() {
                    selected = index;
                  });
                },
                pageController: pageController,
                restaurant: restaurant,
              ),
            ),
            SizedBox(
              height: 60,
              child: SmoothPageIndicator(
                controller: pageController,
                count: restaurant.menu!.length,
                effect: CustomizableEffect(
                  dotDecoration: DotDecoration(
                    width: 8,
                    height: 8,
                    color: Colors.grey.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  activeDotDecoration: DotDecoration(
                    width: 10,
                    height: 10,
                    color: kBackground,
                    borderRadius: BorderRadius.circular(10),
                    dotBorder: const DotBorder(
                      color: KPrimaryColor,
                      padding: 2,
                      width: 2,
                    ),
                  ),
                  
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
