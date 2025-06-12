import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final String balance;
  final String cardNumber;
  final String expireMonth;
  final String expireYear;
  final color;
  const MyCard({
    super.key,
    required this.balance,
    required this.cardNumber,
    required this.expireMonth,
    required this.expireYear,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30),
      child: Container(
        padding: const EdgeInsets.all(20),
        width: 350,
        height: 145,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Balance",
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
            const SizedBox(height: 5),
            Text(
              '\$$balance',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(cardNumber, style: TextStyle(color: Colors.white)),
                Text(
                  '$expireMonth/$expireYear',
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
