import 'package:flutter/material.dart';
import 'package:flutter_realestate/widgets/house_card.dart';

import '../models/item_model.dart';

class SuggestionList extends StatefulWidget {
  String? title;
  List<Item>? items;
  SuggestionList({super.key, this.title, this.items});

  @override
  State<SuggestionList> createState() => _SuggestionListState();
}

class _SuggestionListState extends State<SuggestionList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.title!,
                style: const TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text('See All'),
              )
            ],
          ),
          const SizedBox(
            height: 12.0,
          ),
          Container(
            decoration: const BoxDecoration(
              color: Colors.transparent,
            ),
            height: 340.0,
            width: double.infinity,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: widget.items!.length,
              itemBuilder: (context, index) => ItemCard(
                item: widget.items![index],
                ontap: () {},
              ),
            ),
          )
        ],
      ),
    );
  }
}
