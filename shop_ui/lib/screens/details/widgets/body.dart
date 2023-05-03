import 'package:flutter/material.dart';
import 'package:shop_ui/constants/constants.dart';
import 'package:shop_ui/models/product.dart';
import 'package:shop_ui/screens/details/widgets/cart_button.dart';
import 'package:shop_ui/screens/details/widgets/cart_counter.dart';
import 'package:shop_ui/screens/details/widgets/color_size.dart';
import 'package:shop_ui/screens/details/widgets/description.dart';
import 'package:shop_ui/screens/details/widgets/product_title_with_image.dart';

class Body extends StatelessWidget {
  final Product? product;
  const Body({super.key, this.product});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(children: [
        SizedBox(
          height: size.height,
          child: Stack(
            children: [
              Container(
                margin: EdgeInsets.only(top: size.height * 0.3),
                padding: EdgeInsets.only(
                    top: size.height * 0.12,
                    left: kDefaultPadding,
                    right: kDefaultPadding),
                // height: 500,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24)),
                ),
                child: Column(
                  children: [
                    ColorAndSize(product: product),
                    Description(product: product),
                    const CartCounter(),
                    ShoppingCart(
                      color: product!.color!,
                    ),
                  ],
                ),
              ),
              productTitleWithImage(product: product)
            ],
          ),
        )
      ]),
    );
  }
}
