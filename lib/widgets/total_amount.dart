import 'package:flutter/material.dart';

class TotalAmount extends StatelessWidget {
  const TotalAmount({super.key, required this.text, required this.amount});
  final String text;
  final double amount;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Text(
              text,
              style: const TextStyle(
                  color: Colors.black45,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Row(children: [
            const Icon(
              Icons.shopping_bag,
              size: 14,
            ),
            const SizedBox(
              width: 5,
            ),
            SizedBox(
              width: 45,
              child: Text('$amount',
                  style: const TextStyle(
                      color: Colors.black54,
                      fontSize: 14,
                      fontWeight: FontWeight.bold)),
            ),
            const Text(
              ' BDT',
              style: TextStyle(fontSize: 10, color: Colors.grey),
            )
          ])
        ],
      ),
    );
  }
}
