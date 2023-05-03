import 'package:flutter/material.dart';
import 'package:shop_ui/constants/constants.dart';
import 'package:shop_ui/models/product.dart';
import 'package:shop_ui/screens/details/details_screen.dart';
import 'package:shop_ui/screens/home/widgets/categories.dart';
import 'package:shop_ui/screens/home/widgets/item_card.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Text(
            "Woman",
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
        ),
        const Categories(),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: GridView.builder(
              itemCount: Product.products.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: kDefaultPadding,
                  crossAxisSpacing: kDefaultPadding,
                  childAspectRatio: 0.75),
              itemBuilder: (context, index) => ItemCard(
                  product: Product.products[index],
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailsScreen(
                          product: Product.products[index],
                        ),
                      ),
                    );
                  }),
            ),
          ),
        )
      ],
    );
  }
}
