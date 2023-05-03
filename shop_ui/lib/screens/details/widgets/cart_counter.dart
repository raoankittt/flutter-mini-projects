import 'package:flutter/material.dart';

class CartCounter extends StatefulWidget {
  const CartCounter({super.key});

  @override
  State<CartCounter> createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int _itemCount = 1;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              quantity(Icons.remove, () => _itemCount--, _itemCount),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  _itemCount.toString(),
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 22),
                ),
              ),
              quantity(Icons.add, () => _itemCount++, _itemCount),
            ],
          ),
          Container(
            child: const Icon(
              Icons.favorite_border_outlined,
              size: 30,
              color: Colors.pinkAccent,
            ),
          )
        ],
      ),
    );
  }

  GestureDetector quantity(IconData icon, Function callback, int itemCount) {
    return GestureDetector(
      onTap: () {
        setState(() => callback());
      },
      child: Container(
        width: 30,
        height: 30,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black54,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Icon(
          icon,
          size: 20,
        ),
      ),
    );
  }
}
