import "package:flutter/material.dart";
import "../models/catelog.dart";

class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Card(
        child: ListTile(
          onTap: () {
            print("${item.name} is Pressing");
          },
          leading: Image.network(item.image!),
          title: Text(item.name!),
          subtitle: Text(item.desc!),
          trailing: Text(
            "\$${item.price}",
            textScaleFactor: 1.5,
            style: const TextStyle(
                color: Colors.deepPurple, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
