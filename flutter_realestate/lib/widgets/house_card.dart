import 'package:flutter/material.dart';

import '../models/item_model.dart';

class ItemCard extends StatefulWidget {
  Item? item;
  Function()? ontap;
  ItemCard({super.key, this.item, this.ontap});

  @override
  State<ItemCard> createState() => _ItemCardState();
}

class _ItemCardState extends State<ItemCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300.0,
      margin: const EdgeInsets.only(right: 20.0),
      decoration: BoxDecoration(
        color: const Color(0x00fcf9f8),
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(color: Colors.grey.shade100),
      ),
      child: InkWell(
        onTap: widget.ontap!,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 150.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: Colors.grey.shade200,
                  image: DecorationImage(
                    image: NetworkImage(widget.item!.thumbnail!),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Text(
                widget.item!.title!,
                style: const TextStyle(
                  color: Colors.blueAccent,
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(
                height: 8.0,
              ),
              Row(
                children: [
                  const Icon(
                    Icons.location_on,
                    color: Colors.grey,
                  ),
                  Text(
                    widget.item!.location!,
                    style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 16.0,
                      fontWeight: FontWeight.normal,
                    ),
                    overflow: TextOverflow.ellipsis,
                  )
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "${widget.item!.price!}\$ Day",
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22.0,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.favorite_outline),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
