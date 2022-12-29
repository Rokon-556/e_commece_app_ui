import 'package:flutter/material.dart';

class OrdersInfo extends StatelessWidget {
  const OrdersInfo({
    super.key,
    required this.orderId,
    required this.orderDate,
    required this.paymentDate,
  });

  final int orderId;
  final String orderDate;
  final String paymentDate;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Order Id:$orderId',
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            Text('Placed on : $orderDate'),
            Row(
              children: [
                Text('Paid On: $paymentDate'),
                const Spacer(),
                const Text('Paid'),
              ],
            )
          ],
        ),
      ),
    );
  }
}
