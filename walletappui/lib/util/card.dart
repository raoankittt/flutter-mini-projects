import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final double? balance;
  final int? cardNumber;
  final int? expiryMonth;
  final int? expiryYear;
  final color;

  const MyCard({
    super.key,
    required this.balance,
    required this.cardNumber,
    required this.expiryMonth,
    required this.expiryYear,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Container(
        width: 300,
        padding: const EdgeInsets.all(25),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(height: 10),
            const Text(
              "Balance",
              style: TextStyle(color: Colors.white),
            ),
            const SizedBox(height: 10),
            Text(
              "\$$balance",
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // card number
                Text(
                  cardNumber.toString(),
                  style: const TextStyle(color: Colors.white),
                ),

                // card expiry date
                Text(
                  "$expiryMonth/$expiryYear",
                  style: const TextStyle(color: Colors.white),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
