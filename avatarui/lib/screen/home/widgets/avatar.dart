import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  final List<String>? avatar;
  const Avatar({super.key, required this.avatar});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 180,
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              avatar![0],
              style: const TextStyle(
                fontSize: 70,
              ),
            ),
            Text(
              avatar![1],
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            )
          ]),
    );
  }
}
