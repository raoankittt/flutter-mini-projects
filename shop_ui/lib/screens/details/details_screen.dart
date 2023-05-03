import 'package:flutter/material.dart';
import 'package:shop_ui/constants/constants.dart';
import 'package:shop_ui/models/product.dart';
import 'package:shop_ui/screens/details/widgets/body.dart';

class DetailsScreen extends StatelessWidget {
  final Product? product;
  const DetailsScreen({super.key, this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product!.color!,
      appBar: buildAppBar(),
      body: Body(
        product: product,
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: product!.color,
      elevation: 0,
      leading: IconButton(
        icon: const Icon(
          Icons.arrow_back_ios_new_outlined,
          color: Colors.black,
        ),
        onPressed: () {},
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.search_outlined,
            color: Colors.black,
            size: 30,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.shopping_bag_outlined,
            color: Colors.black,
            size: 30,
          ),
        ),
        const SizedBox(
          width: kDefaultPadding / 2,
        )
      ],
    );
  }
}
