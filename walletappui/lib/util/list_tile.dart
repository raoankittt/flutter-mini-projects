import 'package:flutter/material.dart';

class MyListTile extends StatelessWidget {
  final iconImagePath;
  final String? title;
  final String? subTitle;

  const MyListTile({
    super.key,
    required this.iconImagePath,
    required this.title,
    required this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              // icon
              Container(
                  padding: const EdgeInsets.all(12),
                  height: 80,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Image.asset(iconImagePath)),
              const SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title!,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    subTitle!,
                    style: TextStyle(fontSize: 16, color: Colors.grey.shade700),
                  )
                ],
              ),
            ],
          ),

          // icon
          const Icon(
            Icons.arrow_forward_ios,
          )
        ],
      ),
    );
  }
}
