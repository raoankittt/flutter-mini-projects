import 'package:flutter/material.dart';
import 'package:food_ui_app/models/restaurant.dart';

import 'food_item.dart';

class FoodListView extends StatelessWidget {
  final int? selected;
  final Function? callback;
  final PageController? pageController;
  final Restaurant? restaurant;
  const FoodListView(
      {super.key,
      this.selected,
      this.callback,
      this.pageController,
      this.restaurant});

  @override
  Widget build(BuildContext context) {
    final category = restaurant!.menu!.keys.toList();
    return Container(
      child: PageView(
          controller: pageController,
          onPageChanged: (index) => callback!(index),
          children: category
              .map((e) => ListView.separated(
                    itemBuilder: (context, index) => FoodItem(
                      food: restaurant!.menu![category[selected!]]![index],
                    ),
                    separatorBuilder: (_, index) => const SizedBox(
                      height: 15,
                    ),
                    itemCount: restaurant!.menu![category[selected!]]!.length,
                  ))
              .toList()),
    );
  }
}
