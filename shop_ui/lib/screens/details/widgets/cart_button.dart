import 'package:flutter/material.dart';
import 'package:shop_ui/constants/constants.dart';

class ShoppingCart extends StatelessWidget {
  final Color? color;
  const ShoppingCart({super.key, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: kDefaultPadding),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black54,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: const Icon(Icons.shopping_cart_checkout),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
          decoration: BoxDecoration(
            color: color!,
            borderRadius: BorderRadius.circular(
              15,
            ),
          ),
          child: const Text(
            "Buy Now",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
        )
      ]),
    );
  }
}
