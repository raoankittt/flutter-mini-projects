import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final iconImagePath;
  final String? iconText;

  const MyButton({
    super.key,
    required this.iconImagePath,
    required this.iconText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 90,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
              // color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: const [
                BoxShadow(
                  blurRadius: 30,
                  spreadRadius: 10,
                  color: Colors.white,
                ),
              ]),
          child: Image.asset(iconImagePath),
        ),
        const SizedBox(height: 12),
        Text(
          "$iconText",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.grey.shade700,
          ),
        )
      ],
    );
  }
}
